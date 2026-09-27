# Tek baglanti: 220, EHLO 250, STARTTLS 220, sonra gercek TLS (self-signed).
# Istemci sertifika dogrulamasinda dusmeli. Soketi STARTTLS'ten once
# kapatmak Linux'ta nox.tls icinde illegal instruction (ud2) uretebiliyor.
import os
import socket
import ssl
import sys

port = int(sys.argv[1])
here = os.path.dirname(os.path.abspath(__file__))
cert = os.path.join(here, "fixtures", "smtp.crt")
key = os.path.join(here, "fixtures", "smtp.key")

srv = socket.socket()
srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
srv.bind(("127.0.0.1", port))
srv.listen(1)
srv.settimeout(8)
open("/tmp/nyx-fake-smtp.ready", "w").write("1")

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

ctx = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
ctx.minimum_version = ssl.TLSVersion.TLSv1_2
ctx.load_cert_chain(cert, key)
try:
    tls = ctx.wrap_socket(conn, server_side=True)
    tls.settimeout(3)
    tls.recv(64)
    tls.close()
except Exception:
    try:
        conn.close()
    except Exception:
        pass
srv.close()
