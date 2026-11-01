# 🐝 NECTARJAR // QUEEN BEE

![Queen Bee Page Visits](https://vbr.nathanchung.dev/badge?page_id=Hellfire13666.NECTARJAR-QUEEN-BEE&color=FFD700&lcolor=080808&text=Page_Visits&style=flat-square)

**GlitchByte Phantom Labs • Live link harvests, HTTP checks, redirects, and visitor-cookie diagnostics**

*Follow the links. Count the redirects. Bring home the honey.*

NECTARJAR is a Python website link checker with a honey-gold terminal interface and a Lychee-inspired live status summary.

## Release status

The **repository homepage is being prepared**. The approved local edition has been tested, but the complete source package has **not yet been published here**. Do not treat the repository as an installable release until the reviewed source and test suite appear.

## What Queen Bee does

- Streams discovered public links and HTTP status results in the terminal
- Summarizes total, unique, successful, errored, unsupported, and redirected links
- Groups public-page, external, and static-asset links
- Reports website-issued cookie metadata for the crawler's *own client context*
- Keeps ordinary cookie metadata output redacted by default

Cookie values should not be copied into GitHub issues, screenshots, reports, or documentation. Cookies received while visiting a public profile are not cookies belonging to the profile owner.

## Planned quick start

After source publication, from the directory containing `NECTARJAR.py`:

```bash
python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

**Release gate:** publish only audited, matching source, tests, privacy-safe examples, and the Honey Vault.

---
Maintained by **Hellfire13666** • GlitchByte Phantom Labs
