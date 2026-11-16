// Faz 1 telini DOM'a basar. Faz 2 aynı teli yamalar.
// innerHTML yok. Metin textContent, girdi value olur.

function unescapeField(value) {
  let out = "";
  let i = 0;
  while (i < value.length) {
    if (value[i] === "\\" && i + 1 < value.length) {
      const n = value[i + 1];
      if (n === "n") out += "\n";
      else if (n === "r") out += "\r";
      else if (n === "s") out += " ";
      else if (n === "\\") out += "\\";
      else if (n === "z") out += "";
      else throw new Error("bilinmeyen kaçış: \\" + n);
      i += 2;
    } else {
      out += value[i];
      i += 1;
    }
  }
  return out;
}

export function escapeField(value) {
  if (value.length === 0) return "\\z";
  let out = "";
  let i = 0;
  while (i < value.length) {
    const ch = value[i];
    if (ch === "\\") out += "\\\\";
    else if (ch === "\n") out += "\\n";
    else if (ch === "\r") out += "\\r";
    else if (ch === " ") out += "\\s";
    else out += ch;
    i += 1;
  }
  return out;
}

function token(value) {
  if (value === "-") return "";
  return unescapeField(value);
}

export function readHost(text) {
  const commands = [];
  const lines = text.split("\n");
  let i = 0;
  while (i < lines.length) {
    if (lines[i].startsWith("H ")) commands.push(lines[i].slice(2));
    i += 1;
  }
  return commands;
}

export function parseTree(text) {
  const lines = text.split("\n");
  if (lines.length === 0 || lines[0] !== "nyx-ui 1") {
    throw new Error("nyx ui protokolü uyumsuz");
  }
  const nodes = [];
  let ended = false;
  let i = 1;
  while (i < lines.length) {
    const line = lines[i];
    i += 1;
    if (line.length === 0) continue;
    if (line === ".") {
      ended = true;
      break;
    }
    const parts = line.split(" ");
    if (parts[0] === "H") continue;
    if (parts[0] === "N") {
      if (parts.length !== 7) throw new Error("N satırı bozuk");
      nodes.push({
        id: unescapeField(parts[1]),
        kind: parts[2],
        key: token(parts[3]),
        parent: token(parts[4]),
        event: token(parts[5]),
        level: Number(parts[6]),
        text: "",
      });
    } else if (parts[0] === "T") {
      if (parts.length !== 3) throw new Error("T satırı bozuk");
      const id = unescapeField(parts[1]);
      let found = false;
      let n = 0;
      while (n < nodes.length) {
        if (nodes[n].id === id) {
          nodes[n].text = unescapeField(parts[2]);
          found = true;
        }
        n += 1;
      }
      if (!found) throw new Error("metin düğümü yok: " + id);
    } else {
      throw new Error("bilinmeyen satır");
    }
  }
  if (!ended) throw new Error("nyx ui protokolü yarım");
  return nodes;
}

export const FRAME_LIMIT = 8;

export function splitFrames(text) {
  const frames = [];
  let buf = [];
  const lines = text.split("\n");
  let i = 0;
  while (i < lines.length) {
    const line = lines[i];
    i += 1;
    if (line.length === 0 && buf.length === 0) continue;
    buf.push(line);
    if (line === ".") {
      frames.push(buf.join("\n") + "\n");
      buf = [];
    }
  }
  const leftover = buf.join("\n").trim();
  if (leftover.length > 0) throw new Error(leftover);
  if (frames.length > FRAME_LIMIT) throw new Error("yeniden çizim sınırı");
  return frames;
}

function elementFor(node) {
  if (node.kind === "heading") {
    const level = node.level >= 1 && node.level <= 6 ? node.level : 1;
    return document.createElement("h" + String(level));
  }
  if (node.kind === "button") {
    const button = document.createElement("button");
    button.type = "button";
    return button;
  }
  if (node.kind === "box" || node.kind === "row" || node.kind === "column" || node.kind === "grid" || node.kind === "sidebar" || node.kind === "panel") {
    return document.createElement("div");
  }
  if (node.kind === "tabs") {
    const list = document.createElement("div");
    list.setAttribute("role", "tablist");
    return list;
  }
  if (node.kind === "tab") {
    const tab = document.createElement("button");
    tab.type = "button";
    tab.setAttribute("role", "tab");
    return tab;
  }
  if (node.kind === "modal") {
    const dialog = document.createElement("div");
    dialog.setAttribute("role", "dialog");
    dialog.setAttribute("aria-modal", "true");
    return dialog;
  }
  if (node.kind === "text" || node.kind === "label" || node.kind === "error") {
    const el = node.kind === "text" ? document.createElement("span") : document.createElement(node.kind === "label" ? "label" : "p");
    if (node.kind === "error") el.setAttribute("role", "alert");
    return el;
  }
  if (node.kind === "input" || node.kind === "secret" || node.kind === "number") {
    const input = document.createElement("input");
    input.type = node.kind === "secret" ? "password" : node.kind === "number" ? "number" : "text";
    input.autocomplete = "off";
    if (node.kind === "number") input.inputMode = "numeric";
    return input;
  }
  if (node.kind === "select") return document.createElement("select");
  if (node.kind === "option") return document.createElement("option");
  if (node.kind === "check") {
    const wrap = document.createElement("label");
    const input = document.createElement("input");
    input.type = "checkbox";
    const caption = document.createElement("span");
    wrap.append(input, caption);
    return wrap;
  }
  if (node.kind === "table" || node.kind === "tr" || node.kind === "td" || node.kind === "bars" || node.kind === "bar") {
    const el = document.createElement("div");
    if (node.kind === "table") el.setAttribute("role", "table");
    if (node.kind === "tr") el.setAttribute("role", "row");
    if (node.kind === "td") el.setAttribute("role", "cell");
    if (node.kind === "bar") {
      const fill = document.createElement("span");
      el.append(fill);
    }
    return el;
  }
  if (node.kind === "th") {
    const el = document.createElement("div");
    el.setAttribute("role", "columnheader");
    const button = document.createElement("button");
    button.type = "button";
    el.append(button);
    return el;
  }
  if (node.kind === "meter") {
    const el = document.createElement("div");
    el.setAttribute("role", "progressbar");
    el.setAttribute("aria-valuemin", "0");
    el.setAttribute("aria-valuemax", "100");
    const label = document.createElement("span");
    const fill = document.createElement("span");
    el.append(label, fill);
    return el;
  }
  if (node.kind === "status") {
    const el = document.createElement("p");
    el.setAttribute("role", "status");
    return el;
  }
  throw new Error("bilinmeyen düğüm: " + node.kind);
}

function controlOf(el) {
  if (!el) return null;
  if (el.dataset.nyxKind === "check") return el.querySelector("input");
  return el;
}

function writeValue(el, text) {
  if (el.value === text) return;
  const focused = document.activeElement === el;
  const start = focused ? el.selectionStart || 0 : 0;
  const end = focused ? el.selectionEnd || 0 : 0;
  el.value = text;
  if (focused && el.setSelectionRange) {
    const max = text.length;
    el.setSelectionRange(Math.min(start, max), Math.min(end, max));
  }
}

function syncElement(el, node) {
  el.className = "nyx-" + node.kind;
  el.setAttribute("data-nyx-id", node.id);
  el.dataset.nyxKind = node.kind;
  const eventTarget = node.kind === "check" ? el.querySelector("input") : node.kind === "th" ? el.querySelector("button") : el;
  if (node.kind !== "option" && node.kind !== "label" && node.kind !== "error" && node.event.length > 0) {
    eventTarget.setAttribute("data-nyx-event", node.event);
  } else if (eventTarget !== el) {
    eventTarget.removeAttribute("data-nyx-event");
  } else {
    el.removeAttribute("data-nyx-event");
  }
  if (node.kind === "input" || node.kind === "secret" || node.kind === "number") {
    writeValue(el, node.text);
    return;
  }
  if (node.kind === "select") return;
  if (node.kind === "option") {
    el.value = node.event;
    if (el.textContent !== node.text) el.textContent = node.text;
    return;
  }
  if (node.kind === "check") {
    const input = el.querySelector("input");
    const caption = el.querySelector("span");
    input.checked = node.level === 1;
    if (caption.textContent !== node.text) caption.textContent = node.text;
    return;
  }
  if (node.kind === "th") {
    const button = el.querySelector("button");
    if (button.textContent !== node.text) button.textContent = node.text;
    const sort = node.level === 1 ? "ascending" : node.level === 2 ? "descending" : "none";
    el.setAttribute("aria-sort", sort);
    return;
  }
  if (node.kind === "meter") {
    const amount = node.level < 0 ? 0 : node.level > 100 ? 100 : node.level;
    el.setAttribute("aria-valuenow", String(amount));
    el.setAttribute("aria-label", node.text);
    const label = el.querySelector("span");
    const fill = el.querySelectorAll("span")[1];
    if (label.textContent !== node.text) label.textContent = node.text;
    fill.style.width = String(amount) + "%";
    return;
  }
  if (node.kind === "bar") {
    const amount = node.level < 0 ? 0 : node.level > 100 ? 100 : node.level;
    el.setAttribute("aria-label", node.text);
    const fill = el.querySelector("span");
    fill.style.width = String(amount) + "%";
    fill.textContent = node.text;
    return;
  }
  if (node.kind === "grid") el.style.setProperty("--nyx-cols", String(node.level > 0 ? node.level : 1));
  if (node.kind === "tab") el.setAttribute("aria-selected", "false");
  if (node.kind === "panel") el.setAttribute("role", "tabpanel");
  if (node.kind === "modal") {
    const open = node.level === 1;
    const was = el.dataset.nyxOpen === "1";
    el.dataset.nyxOpen = open ? "1" : "0";
    if (open) el.removeAttribute("hidden");
    else el.setAttribute("hidden", "");
    el.dataset.nyxFocus = open && !was ? "open" : !open && was ? "close" : "";
  }
  if (node.kind === "box" || node.kind === "row" || node.kind === "column" || node.kind === "grid" || node.kind === "sidebar" || node.kind === "tabs" || node.kind === "panel" || node.kind === "modal" || node.kind === "table" || node.kind === "tr" || node.kind === "bars") {
    return;
  }
  if (el.textContent !== node.text) el.textContent = node.text;
}

function linkControls(parent, nodes, byId) {
  const marked = parent.querySelectorAll("[aria-invalid]");
  let m = 0;
  while (m < marked.length) {
    marked[m].removeAttribute("aria-invalid");
    marked[m].removeAttribute("aria-describedby");
    m += 1;
  }
  const byEvent = new Map();
  let i = 0;
  while (i < nodes.length) {
    const node = nodes[i];
    if (node.kind !== "label" && node.kind !== "error" && node.kind !== "option" && node.event.length > 0) {
      byEvent.set(node.event, node);
    }
    i += 1;
  }
  i = 0;
  while (i < nodes.length) {
    const node = nodes[i];
    const controlNode = byEvent.get(node.event);
    const control = controlNode ? controlOf(byId.get(controlNode.id)) : null;
    if ((node.kind === "label" || node.kind === "error") && control) {
      if (!control.id) control.id = controlNode.id;
      const self = byId.get(node.id);
      if (node.kind === "label") self.htmlFor = control.id;
      else {
        self.id = node.id;
        control.setAttribute("aria-invalid", "true");
        control.setAttribute("aria-describedby", node.id);
      }
    }
    i += 1;
  }
  i = 0;
  while (i < nodes.length) {
    const node = nodes[i];
    if (node.kind === "tabs") {
      const tabs = [];
      const panels = [];
      let c = 0;
      while (c < nodes.length) {
        if (nodes[c].parent === node.id && nodes[c].kind === "tab") tabs.push(nodes[c]);
        if (nodes[c].parent === node.id && nodes[c].kind === "panel") panels.push(nodes[c]);
        c += 1;
      }
      let t = 0;
      while (t < tabs.length) {
        const tab = byId.get(tabs[t].id);
        const selected = t === node.level;
        tab.setAttribute("aria-selected", selected ? "true" : "false");
        tab.tabIndex = selected ? 0 : -1;
        t += 1;
      }
      let p = 0;
      while (p < panels.length) {
        const panel = byId.get(panels[p].id);
        if (p === node.level) panel.removeAttribute("hidden");
        else panel.setAttribute("hidden", "");
        if (tabs[p]) panel.setAttribute("aria-labelledby", tabs[p].id);
        p += 1;
      }
    }
    if (node.kind === "sidebar") {
      const kids = [];
      let c = 0;
      while (c < nodes.length) {
        if (nodes[c].parent === node.id) kids.push(byId.get(nodes[c].id));
        c += 1;
      }
      if (kids[0]) kids[0].setAttribute("role", "navigation");
      if (kids[1]) kids[1].setAttribute("role", "main");
    }
    if (node.kind === "select") {
      const select = byId.get(node.id);
      if (select.value !== node.text) select.value = node.text;
    }
    if (node.kind === "modal") {
      const dialog = byId.get(node.id);
      const heading = dialog.querySelector("h1, h2, h3, h4, h5, h6");
      if (heading) {
        if (!heading.id) heading.id = node.id + "-title";
        dialog.setAttribute("aria-labelledby", heading.id);
      }
      if (dialog.dataset.nyxFocus === "open") {
        const button = dialog.querySelector("button");
        if (button) button.focus();
      }
      if (dialog.dataset.nyxFocus === "close") {
        const back = parent.querySelector("[data-nyx-event='save']");
        if (back) back.focus();
      }
      dialog.dataset.nyxFocus = "";
    }
    i += 1;
  }
}

function placeChildren(host, desired) {
  let i = 0;
  while (i < desired.length) {
    if (host.children[i] !== desired[i]) host.insertBefore(desired[i], host.children[i] || null);
    i += 1;
  }
  while (host.children.length > desired.length) host.removeChild(host.lastElementChild);
}

export function patchTree(parent, text, live) {
  const nodes = parseTree(text);
  const next = new Set();
  let i = 0;
  while (i < nodes.length) {
    next.add(nodes[i].id);
    i += 1;
  }
  for (const [id, el] of live) {
    if (!next.has(id)) {
      el.remove();
      live.delete(id);
    }
  }
  const byId = new Map();
  i = 0;
  while (i < nodes.length) {
    const node = nodes[i];
    let el = live.get(node.id) || null;
    if (el && el.dataset.nyxKind !== node.kind) {
      el.remove();
      live.delete(node.id);
      el = null;
    }
    if (!el) {
      el = elementFor(node);
      el.dataset.nyxKind = node.kind;
      live.set(node.id, el);
    }
    syncElement(el, node);
    byId.set(node.id, el);
    i += 1;
  }
  const groups = new Map();
  i = 0;
  while (i < nodes.length) {
    const node = nodes[i];
    const key = node.parent;
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push(byId.get(node.id));
    i += 1;
  }
  for (const [parentId, desired] of groups) {
    const host = parentId.length === 0 ? parent : byId.get(parentId);
    if (!host) throw new Error("ebeveyn yok: " + parentId);
    placeChildren(host, desired);
  }
  linkControls(parent, nodes, byId);
  return nodes.length;
}

const lives = new WeakMap();

export function mountTree(text, parent) {
  let live = lives.get(parent);
  if (!live) {
    live = new Map();
    lives.set(parent, live);
  }
  return patchTree(parent, text, live);
}
