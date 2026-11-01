#!/usr/bin/env bash
# Queen Bee: install approved desktop artwork, and register menu entry if missing.
set -eu
python3 - <<'PY'
from pathlib import Path
from urllib.request import Request, urlopen
import sys
home=Path.home()
app=home/"NECTARJAR-QUEEN-BEE-v1.0.0"
if not (app/"HIVE.py").is_file():
    sys.exit("Queen Bee program not found. Install Queen Bee first; nothing changed.")
url="https://raw.githubusercontent.com/Hellfire13666/NECTARJAR-QUEEN-BEE/main/nectarjar7.png"
try:
    with urlopen(Request(url,headers={"User-Agent":"QueenBee-Icon/1.1"}),timeout=25) as resp:
        data=resp.read(5_000_001)
except Exception as exc:
    sys.exit(f"Artwork download failed; nothing changed: {exc}")
if len(data)>5_000_000 or not data.startswith(b"\x89PNG\r\n\x1a\n"):
    sys.exit("Invalid PNG artwork; nothing changed.")
folder=home/".local/share/icons"
folder.mkdir(parents=True,exist_ok=True)
icon=folder/"nectarjar-queen-bee.png"
icon.write_bytes(data)
launcher_dir=home/".local/share/applications"
launcher_dir.mkdir(parents=True,exist_ok=True)
launcher=launcher_dir/"nectarjar-queen-bee.desktop"
wrapper=app/"OPEN-QUEEN-BEE.sh"
if not launcher.exists():
    if not wrapper.exists():
        wrapper.write_text('#!/bin/sh\ncd "$HOME/NECTARJAR-QUEEN-BEE-v1.0.0" || exit 1\nexec python3 HIVE.py\n')
        wrapper.chmod(0o755)
    launcher.write_text("[Desktop Entry]\nType=Application\nName=NECTARJAR Queen Bee\nComment=GlitchByte Phantom Labs Golden Hive\nExec="+str(wrapper)+"\nPath="+str(app)+"\nIcon="+str(icon)+"\nTerminal=true\nCategories=Utility;\n")
    launcher.chmod(0o755)
    print("[QUEEN BEE] Desktop menu entry created with official artwork")
else:
    old=launcher.read_text()
    lines=old.splitlines()
    if any(line.startswith("Icon=") for line in lines):
        lines=["Icon="+str(icon) if line.startswith("Icon=") else line for line in lines]
    else:
        lines.append("Icon="+str(icon))
    updated="\n".join(lines)+"\n"
    if updated != old:
        backup=launcher.with_name("nectarjar-queen-bee.desktop.before-art.bak")
        if not backup.exists(): backup.write_text(old)
        launcher.write_text(updated)
    print("[QUEEN BEE] Existing desktop menu entry updated with official artwork")
print("[QUEEN BEE] Open NECTARJAR Queen Bee from the application menu")
PY
