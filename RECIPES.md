# 🐝 NECTARJAR // QUEEN BEE · Easy Recipes

> **Release status:** These examples describe the approved local edition. The full audited source is not yet published in this repository. Run them only in a folder containing `NECTARJAR.py`.

## Quick Start

```bash
python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

## Public-page link checks

Use public pages or sites you own or are authorized to check. Run each check intentionally, avoid repeated requests to restricted websites, and respect rate limits.

**Basic check and Lychee-style summary**

```bash
python3 NECTARJAR.py 'https://www.python.org/' --check --lychee-style
```

**Check another public example**

```bash
python3 NECTARJAR.py 'https://example.com/' --check --lychee-style
```

**Inspect a public Facebook Page URL** *(only if access is permitted; results depend on Facebook's response)*

```bash
python3 NECTARJAR.py 'https://www.facebook.com/Meta' --check --lychee-style
```

## Understanding the results

- **Discovered links:** URLs exposed by the source, not proof of access to private content.
- **HTTP status:** A response such as `200` means the request returned a response. It does not authenticate a post or prove page content was retrieved.
- **Classification:** Facebook, external, and static-asset counts describe link types.
- **Redirects:** A redirect count describes navigation outcomes, not a discovered person or account.
- **Cookie metadata:** May reflect cookies issued to the tool's own client. **Never treat these as a target account's cookies.**
- **Lychee-style output:** Structured reporting of checks and metadata. Never publish credential or session-cookie values.

## Privacy and safe sharing

Do not include passwords, token values, session cookies, user identifiers, personal system paths, or private case material in public reports, screenshots, GitHub issues, or example commands.

By default, report only redacted cookie metadata. Don't upload raw cookie values.

## Verified local example · Python.org

The following is a **user-observed snapshot**, not fabricated demo data or a guarantee of future results:

```text
[200] https://www.python.org/downloads/android/
[LINK GROUPS] Facebook=0 | External=135 | Assets=17 | Total=152
152 Total | 152 Unique | 29 OK | 0 Errors | 0 Unsupported | 0 Redirects
[COOKIE RESULTS] Lychee-shaped metadata (values redacted):
[]
```

**Reading the snapshot:** 152 unique links were discovered. The checker reported 29 successful checks, not 152 successful checks. The empty cookie result means no cookie metadata appeared in this run. Counts vary with website contents and access.

## Artwork

The approved **Beast Honey Cookie Edition** artwork is included in this repository as [nectarjar7.png](nectarjar7.png) and appears at the top of the [README](README.md).

---
GlitchByte Phantom Labs · Queen Bee edition
