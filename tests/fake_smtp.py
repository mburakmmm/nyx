# Tek baglanti: 220, EHLO 250, STARTTLS 220, sonra soketi kapat.
# TLS yukseltmesi basarisiz olmali; STARTTLS oncesi kod hatasi olmamali.
import socket
import sys

port = int(sys.argv[1])
srv = socket.socket()
srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
srv.bind(("127.0.0.1", port))
srv.listen(1)
srv.settimeout(8)
try:
    conn, _addr = srv.accept()
except Exception:
    sys.exit(0)
conn.settimeout(5)

def send(msg: str) -> None:
    conn.sendall(msg.encode())

def read_line() -> str:
    data = b""
    while b"\n" not in data:
        chunk = conn.recv(256)
        if len(chunk) == 0:
            break
        data = data + chunk
    return data.decode("utf-8", "replace")

send("220 fake.smtp ESMTP\r\n")
line = read_line()
if not line.upper().startswith("EHLO") and not line.upper().startswith("HELO"):
    send("500 expected EHLO\r\n")
    conn.close()
    sys.exit(0)
send("250-fake.smtp\r\n250 STARTTLS\r\n")
line = read_line()
if not line.upper().startswith("STARTTLS"):
    send("500 expected STARTTLS\r\n")
    conn.close()
    sys.exit(0)
send("220 ready to start tls\r\n")
conn.close()
srv.close()
