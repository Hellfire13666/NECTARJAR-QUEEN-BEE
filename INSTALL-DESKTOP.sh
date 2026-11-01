#!/usr/bin/env bash
# Golden Hive desktop menu launcher. Does not modify the crawler.
set -eu
python3 - <<'PY'
from pathlib import Path
import shlex, subprocess, sys
home=Path.home()
app=home/"NECTARJAR-QUEEN-BEE-v1.0.0"
if not (app/"HIVE.py").is_file():
    sys.exit("Golden Hive not found. Install Queen Bee first; nothing changed.")
dest=home/".local"/"share"/"applications"
dest.mkdir(parents=True,exist_ok=True)
launcher=dest/"nectarjar-queen-bee.desktop"
wrapper=app/"OPEN-QUEEN-BEE.sh"
if launcher.exists() or wrapper.exists():
    sys.exit("Existing Queen Bee launcher preserved; nothing overwritten.")
wrapper.write_text('#!/bin/sh\ncd "$HOME/NECTARJAR-QUEEN-BEE-v1.0.0" || exit 1\nexec python3 HIVE.py\n')
wrapper.chmod(0o755)
launcher.write_text("[Desktop Entry]\nType=Application\nName=NECTARJAR Queen Bee\nComment=GlitchByte Phantom Labs Golden Hive\nExec="+str(wrapper)+"\nPath="+str(app)+"\nIcon=utilities-terminal\nTerminal=true\nCategories=Utility;\n")
launcher.chmod(0o755)
print("[QUEEN BEE] Application menu launcher installed")
print("[QUEEN BEE] Opening Golden Hive...")
subprocess.run([sys.executable,"HIVE.py"],cwd=app,check=False)
PY
