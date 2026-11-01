# 🐝 NECTARJAR // QUEEN BEE · Easy Recipes

> **Release status:** v1.0.0 is published. Linux installation has passed 38 offline tests on one computer. Use the three commands below without manually downloading a ZIP.

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
