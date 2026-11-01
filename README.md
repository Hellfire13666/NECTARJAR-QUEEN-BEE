# 🐝 NECTARJAR // QUEEN BEE

![NECTARJAR // QUEEN BEE repository banner](nectarjar7.png)

![Queen Bee Page Visits](https://vbr.nathanchung.dev/badge?page_id=Hellfire13666.NECTARJAR-QUEEN-BEE&color=FFD700&lcolor=080808&text=Page_Visits&style=flat-square)

**GlitchByte Phantom Labs · Link discovery · HTTP checks · Lychee-style reporting**

*Follow the links. Count the redirects. Bring home the honey.*

NECTARJAR is a Python public-link checker with a honey-gold terminal interface, live link and HTTP status output, and privacy-conscious cookie metadata reporting.

## 🚀 ONE-PASTE INSTALL · LINUX

The audited source archive is prepared and the installer script is in this repository. **Release asset upload is still pending.** This command becomes usable as soon as the matching `v1.0.0` GitHub Release ZIP is attached. Until then it stops without installing anything.

```bash
curl -fsSL https://raw.githubusercontent.com/Hellfire13666/NECTARJAR-QUEEN-BEE/main/INSTALL.sh | bash
```

The installer verifies the ZIP's SHA-256 checksum, runs the 38-test suite, installs separately to a generic folder, and does not run any network scan. [Review the installer source](INSTALL.sh).

**After installation, one-paste test:**

```bash
cd "$HOME/NECTARJAR-QUEEN-BEE-v1.0.0" && python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

Windows, Termux and mobile support are **not yet verified**; do not use the Linux installer there.

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

The full source package and tests have **not yet been published in this repository**. Release only the audited source, tests, documentation and matching approved artwork.

---
Maintained by **Hellfire13666** · GlitchByte Phantom Labs
