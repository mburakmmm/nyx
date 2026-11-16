# Nyx UI yüzeyi

Tel `nyx.ui.wire_version()` ile `nyx-ui 1` olur. `protocol` adı Nox’ta tanımlayıcı değildir. Paket sürümü `VERSION` dosyasındadır. Çizim kökü `root()` anahtarı `root` olan düğümdür. `render` teli döndürür. `frame` onu basar ve açık çerçeve sayısını `frame_limit` ile sınırlar.

Yerleşim: `text`, `heading`, `button`, `field`, `secret`, `number`, `choice`, `option`, `check`, `label`, `error`, `box`, `row`, `column`, `grid`, `sidebar`, `tabs`, `tab`, `panel`, `modal`.

Veri: `sheet`, `line`, `head_cell`, `cell`, `meter`, `status`, `bars`, `bar`. Çubuk düzeyi 0 ile 100 arasındadır. Grafik paketi yoktur.

Geçmiş: `history`, `navigate`, `replace_route`, `nav_state`. Yol bir olay kimliğidir. Eğik çizgi `UiError` olur.

Olay satırı `nyx.ui_session.poll_event` ile gelir. Türler `click`, `input`, `nav`, `stop`. Adres `http://nyx-ui.invalid/event` dir ve host onu tamamlar.

Ağ `nyx.ui_net` içindedir. `get_session` ve `post_rpc` aynı köken sözleşmesini kullanır. Kayıtlı sunucu işlemleri `session.login`, `session.logout`, `notes.list`, `notes.create`, `notes.delete`, `board.page`.

Uyumsuz ilk satır `nyx ui protokolü uyumsuz` hatası verir. Yarım tel `nyx ui protokolü yarım` olur. Bozuk `N` satırı `N satırı bozuk` olur.
