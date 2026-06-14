# oh-shelly — openHAB Binding Development Repository

This repository supports the development of the [oh-shelly](https://github.com/your-org/oh-shelly) openHAB binding using Claude CLI (Claude Code). It ships a dedicated Claude skill and companion files that give Claude deep, pre-loaded knowledge of the binding's architecture and the Shelly device API — enabling more precise implementations and fewer hallucinations.

> **Status:** The skill is under active development and will be merged into the main binding repository in the future.

---

## How it works

Claude is augmented by two knowledge sources that activate automatically:

**oh-shelly Skill** — contains code structure, architectural decisions, device mapping conventions, and formatting rules. Loaded once, consulted throughout the session.

**Shelly API Doc MCP** (`https://shelly-api-docs.shelly.cloud/mcp/`) — activated automatically by the skill. Provides live access to the official Shelly API documentation directly inside Claude's context, exposing `/shelly*` commands for querying API details on demand.

When implementing a new device, it is recommended to additionally pass Claude the device-specific link from the Shelly Knowledge Base:
`https://kb.shelly.cloud/knowledge-base/devices`

---

## Repository Structure

```
oh-shelly-dev/
├── README.md                  # This file
├── DEVELOPER.md               # Binding architecture overview, device onboarding guide
│
├── oh-shelly.skill/           # Claude skill — install to ~/.claude/skills/oh-shelly/
│   ├── SKILL.md               # Skill dispatcher (entry point, loaded by Claude)
│   ├── api-gen1.md            # Shelly Gen1 API reference
│   ├── api-gen2.md            # Shelly Gen2+ API reference
│   ├── api-blu.md             # Shelly BLU (Bluetooth) API reference
│   ├── architecture.md        # Binding architecture & design decisions
│   ├── devices.md             # Device catalogue & channel mapping conventions
│   ├── developer.md           # Workflow conventions, code style, formatting rules
│   └── api-deps.md            # Key Java dependency method signatures (prevents .m2 crawling)
│
└── .wolf/                     # OpenWolf project memory (optional, see below)
    ├── cerebrum.md            # Project memory — high-level context
    ├── anatomy.md             # Structural knowledge
    ├── buglog.json            # Fix history — prevents repeated debugging cycles
    └── config.json            # OpenWolf configuration
```

> `DEVELOPER.md` (binding root) is updated alongside the skill whenever new device types are onboarded. Both sources are authoritative — check them first when adding support for a new device.

---

## Installation

### Prerequisites

- [Claude CLI (Claude Code)](https://docs.anthropic.com/en/docs/claude-code) installed
- Access to the oh-shelly binding source repository

### 1 — Install the oh-shelly Skill

Copy the skill directory into your global Claude skills folder:

```bash
cp -r oh-shelly.skill/ ~/.claude/skills/oh-shelly
```

The skill is now available in every Claude CLI session. It does **not** need to be re-installed after updates — pull this repo and re-run the command to pick up the latest version.

### 2 — Copy companion files into the binding directory

Navigate to your local oh-shelly binding checkout and copy `DEVELOPER.md`:

```bash
cp DEVELOPER.md /path/to/oh-shelly-binding/
```

### 3 — Activate the skill in a Claude session

Open Claude CLI in the binding directory and run:

```bash
/oh-shelly
```

This activates the skill and connects the Shelly API Doc MCP. The following slash commands become available:

| Command | Description |
|---|---|
| `/shelly-gen1 <endpoint>` | Query Gen1 REST API details |
| `/shelly-gen2 <method>` | Query Gen2+ RPC API details |
| `/shelly-blu <profile>` | Query BLU Bluetooth profile details |

---

## Recommended: OpenWolf Token Optimization

[OpenWolf](https://openwolf.com) is a Claude CLI middleware that significantly reduces token consumption through project memory and session tracking. Its use is strongly recommended for sustained binding development.

### Setup

Initialize OpenWolf in the binding directory:

```bash
cd /path/to/oh-shelly-binding
openwolf init
```

This creates a `.wolf/` directory with the following files:

| File | Purpose | Check in? |
|---|---|---|
| `cerebrum.md` | Project memory | ✅ after review |
| `anatomy.md` | Structural knowledge | ✅ after review |
| `buglog.json` | Fix history | ✅ after review |
| `config.json` | OpenWolf config | ✅ after review |
| `token-ledger.json` | Personal token metrics | ❌ gitignore |
| `memory.md` | Personal action log | ❌ gitignore |

After initialization, copy the curated `.wolf/` files from this repository into the binding's `.wolf/` directory:

```bash
cp .wolf/cerebrum.md  /path/to/oh-shelly-binding/.wolf/
cp .wolf/anatomy.md   /path/to/oh-shelly-binding/.wolf/
cp .wolf/buglog.json  /path/to/oh-shelly-binding/.wolf/
cp .wolf/config.json  /path/to/oh-shelly-binding/.wolf/
```

> **Important:** Review all dotfiles (`.claude*`, `.wolf/*`) before copying. Merge carefully with any files already created by `openwolf init` — do not blindly overwrite.

Add the following to `.gitignore` in the binding repo:

```gitignore
.wolf/token-ledger.json
.wolf/memory.md
```

---

## Updating the Skill

Pull this repository and re-copy the skill directory:

```bash
git pull
cp -r oh-shelly.skill/ ~/.claude/skills/oh-shelly
```

`DEVELOPER.md` and the skill are updated in sync. When the skill reports a version bump, also update `DEVELOPER.md` in the binding root.

---

## Links

- Shelly API Documentation: <https://shelly-api-docs.shelly.cloud>
- Shelly Knowledge Base (Devices): <https://kb.shelly.cloud/knowledge-base/devices>
- OpenWolf: <https://openwolf.com>
- openHAB Binding Development Guide: <https://www.openhab.org/docs/developer/bindings/>

