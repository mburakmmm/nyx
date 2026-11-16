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
    # CREATE_NO_WINDOW and DETACHED_PROCESS both start Python without a
    # window station, and Winsock then fails with WinError 10106.
    # A new process group is enough for the child to outlive this starter.
    kwargs["creationflags"] = 0x00000200
else:
    kwargs["start_new_session"] = True
subprocess.Popen(cmd, **kwargs)
