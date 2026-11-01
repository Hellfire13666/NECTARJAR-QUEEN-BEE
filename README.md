# 🐝 NECTARJAR // QUEEN BEE

![NECTARJAR // QUEEN BEE repository banner](nectarjar7.png)

![Queen Bee Page Visits](https://vbr.nathanchung.dev/badge?page_id=Hellfire13666.NECTARJAR-QUEEN-BEE&color=FFD700&lcolor=080808&text=Page_Visits&style=flat-square)

**GlitchByte Phantom Labs · Link discovery · HTTP checks · Lychee-style reporting**

*Follow the links. Count the redirects. Bring home the honey.*

NECTARJAR is a Python public-link checker with a honey-gold terminal interface, live link and HTTP status output, and privacy-conscious cookie metadata reporting.

## 🍯 THREE ONE-PASTE COMMANDS · LINUX

The [v1.0.0 release](https://github.com/Hellfire13666/NECTARJAR-QUEEN-BEE/releases/tag/v1.0.0) is published with the audited ZIP. **The Linux installer has been run successfully on one Linux computer and completed all 38 offline tests.** Other platforms and fresh machines have not yet been verified.

### 1. Install Queen Bee (no manual ZIP download)

```bash
curl -fsSL https://raw.githubusercontent.com/Hellfire13666/NECTARJAR-QUEEN-BEE/main/INSTALL.sh | bash
```

Downloads the published ZIP, checks its SHA-256 digest, runs offline tests and installs in a separate folder. Requires `curl` and Python 3.

### 2. Open a live example scan

```bash
cd "$HOME/NECTARJAR-QUEEN-BEE-v1.0.0" && python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

Runs the published tool on Python.org. Live output varies by run.

### 3. Install and open the desktop Golden Hive menu

```bash
curl -fsSL https://raw.githubusercontent.com/Hellfire13666/NECTARJAR-QUEEN-BEE/main/INSTALL-DESKTOP.sh | bash
```

Creates a Linux application-menu entry and launches `HIVE.py` in a terminal. Run this **after step 1**. Existing launchers are preserved; the icon is the standard terminal icon. [Read the launcher source](INSTALL-DESKTOP.sh).

📖 **[Open the Queen Bee Recipe Vault](RECIPES.md)** for these three copy-paste commands, additional public-site examples, and explanations.


### 🎨 Official Queen Bee desktop icon

After installing the desktop launcher, paste this command to apply the approved `nectarjar7.png` artwork to its application-menu icon:

```bash
curl -fsSL https://raw.githubusercontent.com/Hellfire13666/NECTARJAR-QUEEN-BEE/main/INSTALL-ICON.sh | bash
```

This preserves the working tool and creates a launcher backup before changing its icon. [View the icon installer](INSTALL-ICON.sh).

## 🐝 EASY RECIPES

**Check another public website**

```bash
python3 NECTARJAR.py 'https://example.com/' --check --lychee-style
```

**Check a public Facebook Page if permitted** (availability depends on Meta's access restrictions)

```bash
python3 NECTARJAR.py 'https://www.facebook.com/Meta' --check --lychee-style
```

📖 **[Open the complete beginner recipes](RECIPES.md)** for more examples, observed results, explanations and privacy notes.

## 🍯 Real terminal results

Captured during a local Python.org check with the approved edition:

```text
[200] https://www.python.org/downloads/android/
[LINK GROUPS] Facebook=0 | External=135 | Assets=17 | Total=152
152 Total | 152 Unique | 29 OK | 0 Errors | 0 Unsupported | 0 Redirects
[COOKIE RESULTS] Lychee-shaped metadata (values redacted):
[]
```

**Observed snapshot, not a live feed.** Queen Bee discovered 152 unique links and reported 29 successful HTTP checks. The empty cookie list does not expose any cookie values. Results may change between runs.

## What Queen Bee does

- Prints discovered links and HTTP response statuses in the terminal
- Summarizes successful checks, errors and redirects
- Classifies public-page, external and asset links
- Reports redacted metadata for cookies issued to the tool's **own** client context
- Supports Lychee-style structured status output

**Privacy:** Never publish session-cookie values, secrets, private case material or personal computer paths. HTTP 200 alone does not verify any Facebook post or private content. Respect throttling and access controls.

## Release status

**v1.0.0 released:** Source archive, HIVE menu and 38-test suite are available in the published GitHub Release. Linux installer verified on one existing Linux system. Desktop launcher script is published but not yet verified on a separate desktop.

---
Maintained by **Hellfire13666** · GlitchByte Phantom Labs
