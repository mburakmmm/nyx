# Parent noxc may hand this process a thin environment. Winsock returns
# WinError 10106 unless SYSTEMROOT is set. The SMTP child gets a full
# environment and its own console, then this starter exits.
import os
import subprocess
import sys

py = sys.executable
port = sys.argv[1]
ready = sys.argv[2]
log_path = sys.argv[3]
here = os.path.dirname(os.path.abspath(__file__))
cmd = [py, os.path.join(here, "fake_smtp.py"), port, ready]


def child_env() -> dict:
    env = os.environ.copy()
    if os.name != "nt":
        return env
    root = env.get("SYSTEMROOT") or env.get("SystemRoot") or r"C:\Windows"
    env["SYSTEMROOT"] = root
    env["SystemRoot"] = root
    env["WINDIR"] = env.get("WINDIR") or root
    system32 = root + r"\System32"
    path = env.get("PATH") or env.get("Path") or ""
    if system32.lower() not in path.lower():
        path = system32 + os.pathsep + root + os.pathsep + path
    env["PATH"] = path
    env["Path"] = path
    if not env.get("COMSPEC"):
        env["COMSPEC"] = system32 + r"\cmd.exe"
    if not env.get("PATHEXT"):
        env["PATHEXT"] = ".COM;.EXE;.BAT;.CMD"
    return env


kwargs = {
    "stdout": open(log_path, "w"),
    "stderr": subprocess.STDOUT,
    "stdin": subprocess.DEVNULL,
    "env": child_env(),
}
if os.name == "nt":
    # CREATE_NEW_CONSOLE (0x10). CREATE_NO_WINDOW and DETACHED_PROCESS
    # leave Python without a window station, and Winsock then fails.
    kwargs["creationflags"] = 0x00000010
else:
    kwargs["start_new_session"] = True
subprocess.Popen(cmd, **kwargs)
