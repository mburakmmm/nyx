# Parent noxc process has an empty child environment. This starter is invoked
# by an absolute Python path and detaches fake_smtp so the parent can exit.
import os
import subprocess
import sys

py = sys.executable
port = sys.argv[1]
ready = sys.argv[2]
log_path = sys.argv[3]
here = os.path.dirname(os.path.abspath(__file__))
cmd = [py, os.path.join(here, "fake_smtp.py"), port, ready]
kwargs = {
    "stdout": open(log_path, "w"),
    "stderr": subprocess.STDOUT,
    "stdin": subprocess.DEVNULL,
}
if os.name == "nt":
    # DETACHED_PROCESS (0x8) drops the console before Python starts, so the
    # child exits without writing the ready file. CREATE_NO_WINDOW keeps it running.
    kwargs["creationflags"] = 0x08000000 | 0x00000200
else:
    kwargs["start_new_session"] = True
subprocess.Popen(cmd, **kwargs)
