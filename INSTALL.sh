#!/usr/bin/env bash
# NECTARJAR // QUEEN BEE · public release installer
# Download-only release from GitHub. No credentials, cookies, or auto-run of scans.
set -u
URL="https://github.com/Hellfire13666/NECTARJAR-QUEEN-BEE/releases/download/v1.0.0/NECTARJAR-QUEEN-BEE-PUBLIC-v1.0.0.zip"
EXPECTED="13663d363c3708547fef2a44e0858cb5bedd391d11ec0540196f228f0011081a"
if ! command -v python3 >/dev/null 2>&1; then echo "Python 3 required. No changes made."; exit 1; fi
python3 - "$URL" "$EXPECTED" <<'PY'
from pathlib import Path, PurePosixPath
import hashlib, sys, tempfile, urllib.request, zipfile, shutil, subprocess
url, expected = sys.argv[1:]
target = Path.home() / 'NECTARJAR-QUEEN-BEE-v1.0.0'
if target.exists():
    print('Already installed; preserved:', target)
    sys.exit(0)
try:
    with tempfile.TemporaryDirectory() as tmp:
        root = Path(tmp)
        archive = root / 'source.zip'
        request = urllib.request.Request(url, headers={'User-Agent':'NECTARJAR-QueenBee-Installer/1.0'})
        with urllib.request.urlopen(request, timeout=30) as response, archive.open('wb') as dst:
            shutil.copyfileobj(response, dst)
        digest = hashlib.sha256(archive.read_bytes()).hexdigest()
        if digest != expected:
            raise ValueError('SHA-256 mismatch, refusing installation')
        with zipfile.ZipFile(archive) as z:
            if z.testzip() is not None: raise ValueError('ZIP integrity check failed')
            for info in z.infolist():
                parts = PurePosixPath(info.filename)
                mode = (info.external_attr >> 16) & 0o170000
                if not parts.parts or parts.parts[0] != 'NECTARJAR-QUEEN-BEE-LYCHEE-STYLE' or '..' in parts.parts or parts.is_absolute() or mode not in (0,0o100000,0o040000):
                    raise ValueError('Unexpected ZIP entry')
            z.extractall(root)
        src = root / 'NECTARJAR-QUEEN-BEE-LYCHEE-STYLE'
        if not (src/'NECTARJAR.py').is_file() or not (src/'HIVE.py').is_file():
            raise ValueError('Missing tool source')
        tests = subprocess.run([sys.executable, '-m','unittest','discover','-s','tests','-q'],cwd=src)
        if tests.returncode: raise ValueError('Tests failed, install cancelled')
        shutil.copytree(src, target)
    print('NECTARJAR installed:',target)
    print('Run: cd "$HOME/NECTARJAR-QUEEN-BEE-v1.0.0" && python3 NECTARJAR.py "https://example.com/" --check --lychee-style')
except Exception as exc:
    print('Install stopped safely:',type(exc).__name__,str(exc))
    sys.exit(1)
PY
