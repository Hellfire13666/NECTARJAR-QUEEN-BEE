#!/usr/bin/env bash
# Queen Bee approved artwork icon installer for existing Linux desktop launcher.
set -eu
python3 - <<'PY'
from pathlib import Path
from urllib.request import Request, urlopen
import sys
home=Path.home()
launcher=home/".local/share/applications/nectarjar-queen-bee.desktop"
if not launcher.is_file():
    sys.exit("Queen Bee desktop launcher not found. Run INSTALL-DESKTOP.sh first.")
url="https://raw.githubusercontent.com/Hellfire13666/NECTARJAR-QUEEN-BEE/main/nectarjar7.png"
try:
    with urlopen(Request(url,headers={"User-Agent":"QueenBee-Icon/1.0"}),timeout=25) as resp:
        data=resp.read(5_000_001)
except Exception as exc:
    sys.exit(f"Artwork download failed; launcher unchanged: {exc}")
if len(data)>5_000_000 or not data.startswith(b"\x89PNG\r\n\x1a\n"):
    sys.exit("Artwork missing, oversized or not PNG; launcher unchanged.")
folder=home/".local/share/icons"
folder.mkdir(parents=True,exist_ok=True)
icon=folder/"nectarjar-queen-bee.png"
icon.write_bytes(data)
old=launcher.read_text()
lines=old.splitlines()
if not any(line.startswith("Icon=") for line in lines):
    sys.exit("Launcher format unexpected; icon saved but launcher unchanged.")
updated="\n".join("Icon="+str(icon) if line.startswith("Icon=") else line for line in lines)+"\n"
if updated!=old:
    backup=launcher.with_suffix(".desktop.before-art.bak")
    if not backup.exists(): backup.write_text(old)
    launcher.write_text(updated)
print("[QUEEN BEE] Approved repository artwork installed as desktop icon")
print("[QUEEN BEE] Launcher updated; application menu may need refreshing")
PY
