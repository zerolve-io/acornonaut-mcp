# Acornonaut MCP - Manual Submission Guide

This guide provides copy-paste content for submitting Acornonaut to MCP directories that require manual forms.

---

## ✅ Completed Submissions

- **Official MCP Registry** ✅ Published as `io.github.zerolve-io/acornonaut` v2.5.4 (2026-06-07)
- **awesome-mcp-servers** ✅ PR #7575 submitted (pending approval) (2026-06-07)
- **mcp.so** ✅ Submitted (2026-06-07)
- **Glama** ✅ Submitted (2026-06-07)
- **mcpmarket.com** ✅ Submitted (2026-06-07)

---

## 📋 Remaining Manual Submissions

### 1. mcp.so (Recommended - Large Directory)

**URL:** https://mcp.so/submit

**Form Fields (Copy-Paste Ready):**

| Field | Value |
|-------|-------|
| **Server Name** | `Acornonaut` |
| **Repository URL** | `https://github.com/zerolve-io/acornonaut-mcp` |
| **Homepage** | `https://acornonaut.app` |
| **Documentation** | `https://acornonaut.app/docs/mcp` |
| **Short Description** | `AI-powered YouTube to flashcards with spaced repetition and Anki export` |
| **Long Description** | `Acornonaut converts YouTube playlists into high-quality flashcards with spaced repetition scheduling (SM-2 algorithm). Features 18 MCP tools for playlist management, card search, semantic search, Anki/CSV/JSON export, and quota tracking. OAuth 2.0 authenticated endpoint at https://mcp.acornonaut.app` |
| **Categories** | `Education, Learning, Productivity` |
| **Tags** | `education, flashcards, youtube, spaced-repetition, anki, learning, study, sm2-algorithm` |
| **Transport Type** | `Streamable HTTP` |
| **Endpoint URL** | `https://mcp.acornonaut.app` |
| **Authentication** | `OAuth 2.0` |
| **Platforms** | `macOS, Windows, Linux (all via HTTP)` |

**Config Example:**
```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app",
      "transport": "streamable-http",
      "headers": {
        "Authorization": "Bearer <your-oauth-token>"
      }
    }
  }
}
```

---

### 2. Glama (AI-Focused Directory)

**URL:** https://glama.ai/mcp/servers

**Form Fields (Copy-Paste Ready):**

| Field | Value |
|-------|-------|
| **Server Name** | `Acornonaut MCP Server` |
| **Repository** | `https://github.com/zerolve-io/acornonaut-mcp` |
| **Description** | `AI-powered YouTube playlist to flashcards with spaced repetition (SM-2 algorithm). 18 tools for playlist management, semantic search, and Anki export.` |
| **Endpoint** | `https://mcp.acornonaut.app` |
| **Transport** | `streamable-http` |
| **Has Dockerfile?** | `Yes (for introspection testing)` |
| **OAuth Required?** | `Yes - OAuth 2.0` |
| **Categories** | `Education, Learning Tools` |
| **Documentation Link** | `https://acornonaut.app/docs/mcp` |

**Notes for Glama:**
- Dockerfile is available at: `https://github.com/zerolve-io/acornonaut-mcp/blob/main/Dockerfile`
- See GLAMA.md in repo for introspection testing details

---

### 3. PulseMCP (8600+ Servers)

**URL:** https://pulsemcp.com

**Status:** Cloudflare-protected, likely requires email/form submission

**If there's a contact email, send:**

```
Subject: MCP Server Submission - Acornonaut

Hi PulseMCP team,

I'd like to submit Acornonaut MCP Server to your directory.

Server Details:
- Name: Acornonaut
- Repository: https://github.com/zerolve-io/acornonaut-mcp
- Homepage: https://acornonaut.app
- Documentation: https://acornonaut.app/docs/mcp
- Endpoint: https://mcp.acornonaut.app
- Transport: Streamable HTTP
- Authentication: OAuth 2.0
- Category: Education / Learning

Description:
AI-powered flashcard generation from YouTube playlists with spaced repetition scheduling. Features 18 MCP tools including semantic search, Anki export, and full playlist management.

Tools:
- list_playlists, get_playlist, create_playlist
- get_cards, search_cards (semantic + text search)
- export_deck (Anki/CSV/JSON)
- get_quota, delete_playlist, update_playlist
- get_video_details, retry_failed_videos
- bulk_card_operations, card_analytics
- schedule_review, related_cards
- get_processing_status

Official MCP Registry: io.github.zerolve-io/acornonaut v2.5.4

Thank you!
```

---

### 4. mcpmarket.com

**URL:** https://mcpmarket.com

**Status:** Vercel security checkpoint, likely requires form submission

**If there's a submission form, use:**

| Field | Value |
|-------|-------|
| **Product Name** | `Acornonaut` |
| **Tagline** | `YouTube to Flashcards with AI` |
| **Description** | `Turn YouTube playlists into spaced-repetition flashcards. 18 MCP tools for playlist management, semantic search, and Anki export. SM-2 algorithm for optimal learning.` |
| **Website** | `https://acornonaut.app` |
| **MCP Endpoint** | `https://mcp.acornonaut.app` |
| **GitHub** | `https://github.com/zerolve-io/acornonaut-mcp` |
| **Category** | `Education` |
| **Pricing** | `Freemium (Free tier + Pro plans)` |
| **OAuth Required?** | `Yes` |

---

## 🎨 Assets (If Needed)

### Logo
- Located at: `~/clawd/pi-avatar.png` (or request custom Acornonaut logo)
- Recommended size: 512x512 PNG

### Screenshots
- Dashboard: https://acornonaut.app (can capture)
- MCP config example (see above)

### Demo Video
- Could record: YouTube URL → Create playlist → Review cards → Export to Anki

---

## 📊 Key Metrics to Highlight

- **18 MCP tools** (comprehensive toolkit)
- **OAuth 2.0 secure** (modern auth)
- **Semantic search** (vector embeddings)
- **SM-2 algorithm** (proven spaced repetition)
- **Multi-format export** (Anki, CSV, JSON)
- **Official MCP Registry listed** (already approved)

---

## 🚀 Quick Facts

| Item | Detail |
|------|--------|
| **Transport** | Streamable HTTP |
| **Auth** | OAuth 2.0 |
| **Version** | 2.5.4 |
| **License** | MIT |
| **Maintained by** | Zerolve (https://zerolve.io) |
| **Support** | https://acornonaut.app/support |

---

## ✅ Submission Checklist

- [x] mcp.so ✅ (2026-06-07)
- [x] Glama ✅ (2026-06-07)
- [x] mcpmarket.com ✅ (2026-06-07)
- [ ] PulseMCP (optional - requires finding contact/submission process)

---

**Note:** All content above is copy-paste ready. Just fill the forms and paste the relevant sections!
