# 🐝 NECTARJAR // QUEEN BEE

![NECTARJAR // QUEEN BEE repository banner](nectarjar7.png)

![Queen Bee Page Visits](https://vbr.nathanchung.dev/badge?page_id=Hellfire13666.NECTARJAR-QUEEN-BEE&color=FFD700&lcolor=080808&text=Page_Visits&style=flat-square)

**GlitchByte Phantom Labs · Link discovery · HTTP checks · Lychee-style reporting**

*Follow the links. Count the redirects. Bring home the honey.*

NECTARJAR is a Python public-link checker with a honey-gold terminal interface, live link and HTTP status output, and privacy-conscious cookie metadata reporting.

## 🚀 ONE-PASTE INSTALLATION STATUS

**Not available yet.** This repository currently contains the banner, documentation and recipes, **but not `NECTARJAR.py` or a full tested release**. A working download-and-install command cannot be supplied until those files are published. Do not paste an installer that claims otherwise.

If you already have the tested Queen Bee folder locally, these are real copy-paste run recipes. Open a terminal inside that folder.

**Recipe 1 · Python.org live link check**

```bash
python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

**Recipe 2 · Example.com website check**

```bash
python3 NECTARJAR.py 'https://example.com/' --check --lychee-style
```

**Publication needed for a true installer:** upload the reviewed `NECTARJAR.py`, its supporting modules and tests, then publish the verified release archive. A separate one-paste installer can then be linked here for Linux and other tested platforms.

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
