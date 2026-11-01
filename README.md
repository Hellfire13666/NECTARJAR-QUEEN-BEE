# 🐝 NECTARJAR // QUEEN BEE

![NECTARJAR // QUEEN BEE repository banner](nectarjar7.png)

![Queen Bee Page Visits](https://vbr.nathanchung.dev/badge?page_id=Hellfire13666.NECTARJAR-QUEEN-BEE&color=FFD700&lcolor=080808&text=Page_Visits&style=flat-square)

**GlitchByte Phantom Labs · Link discovery · HTTP checks · Lychee-style reporting**

*Follow the links. Count the redirects. Bring home the honey.*

NECTARJAR is a Python public-link checker with a honey-gold terminal interface, live link and HTTP status output, and privacy-conscious cookie metadata reporting.

## 🚀 QUICK START · ONE COPY, ONE PASTE

Run from the folder containing `NECTARJAR.py`:

```bash
python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

Change the public URL to a website you own or are authorized to check. **This repository is not yet an installable release:** the audited source and tests are still being prepared. The command works only with the approved local edition.

## 🐝 EASY RECIPES

**Check another public website**

```bash
python3 NECTARJAR.py 'https://example.com/' --check --lychee-style
```

**Check a public Facebook Page if permitted** (availability depends on Meta's access restrictions)

```bash
python3 NECTARJAR.py 'https://www.facebook.com/Meta' --check --lychee-style
```

📖 **[Open the complete beginner recipes](RECIPES.md)** for more examples, result explanations and privacy notes.

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
