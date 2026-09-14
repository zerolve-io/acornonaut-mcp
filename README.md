# Acornonaut MCP Server

[![MCP](https://img.shields.io/badge/MCP-compatible-green)](https://modelcontextprotocol.io)

**AI-powered flashcard generation from YouTube videos** — Turn any YouTube playlist into spaced-repetition flashcards and manage your learning library through any MCP-compatible AI client.

This is the official MCP server for Acornonaut, hosted at `https://mcp.acornonaut.app/mcp` and listed in the [official MCP Registry](https://registry.modelcontextprotocol.io) as **`app.acornonaut/mcp`**. (The older registry entry `io.github.zerolve-io/acornonaut` is deprecated — same server, superseded name.)

## ✨ Features

- 🎥 **YouTube to flashcards** — AI-generated cards from video transcripts
- 🧠 **Spaced repetition** — SM-2 algorithm for optimal review scheduling
- 📚 **Playlist management** — Organize learning content by topic
- 🔍 **Semantic search** — Find cards across your entire library
- 📦 **Anki export** — Export decks to Anki format
- 🔐 **OAuth 2.0** — Secure, browser-based authentication

## 🚀 Quick Start

### Claude Desktop

Add to `~/Library/Application Support/Claude/claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app/mcp"
    }
  }
}
```

Restart Claude Desktop. On first use, your browser will open for OAuth sign-in.

### Cursor

Add to `~/.cursor/mcp.json`:

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app/mcp",
      "transport": "streamable-http"
    }
  }
}
```

### Windsurf

Use MCP Server settings:

- **Name:** `acornonaut`
- **URL:** `https://mcp.acornonaut.app/mcp`
- **Transport:** `streamable-http`

Or JSON config:

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app/mcp",
      "transport": "streamable-http"
    }
  }
}
```

### Continue.dev / Cline

Add to your MCP config:

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app/mcp"
    }
  }
}
```

### OpenClaw

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app/mcp"
    }
  }
}
```

## 🔐 Authentication

Acornonaut MCP uses **OAuth 2.0** for secure authentication:

1. On first connection, your browser opens automatically
2. Sign in to Acornonaut (or create a free account)
3. Grant MCP access
4. Return to your AI client — you're connected!

**No API keys to manage.** Tokens are stored securely by your MCP client.

## 🛠️ Available Tools

| Tool | Description |
|------|-------------|
| **Playlists** |
| `list_playlists` | List all your playlists with status and progress |
| `search_playlists` | Search playlists by name or topic |
| `get_playlist` | Get a single playlist with videos and cards |
| `create_playlist` | Create a new playlist from a YouTube URL |
| `update_playlist` | Rename or update playlist settings |
| `delete_playlist` | Permanently delete a playlist and its cards |
| **Videos** |
| `add_video_by_url` | Add a single YouTube video to a playlist |
| `get_video_cards` | Get all flashcards for a specific video |
| `get_transcript` | Retrieve the full transcript of a video |
| **Cards** |
| `list_cards` | List paginated flashcards with filters |
| `get_card` | Get a single card by ID |
| `create_card` | Create a custom flashcard manually |
| `update_card` | Edit a card's front, back, or metadata |
| `delete_card` | Delete a specific card |
| `search_cards` | Full-text search across all your cards |
| `regenerate_cards` | Regenerate a video's cards with fresh AI output |
| **Spaced Repetition** |
| `get_due_cards` | Get cards due for review today |
| `record_review` | Submit a review answer and update scheduling |
| `get_stats` | View your review statistics and streaks |
| **Export** |
| `export_deck` | Export a deck to Anki, CSV, or JSON |

**Total:** 20 tools

## 📖 Example Usage

### Create a playlist from YouTube

```
Ask your AI: "Create an Acornonaut playlist from https://www.youtube.com/playlist?list=..."
```

### Search your flashcards

```
Ask your AI: "Search my Acornonaut cards for 'photosynthesis'"
```

### Review due cards

```
Ask your AI: "What cards are due for review in Acornonaut today?"
```

### Export to Anki

```
Ask your AI: "Export my 'Biology 101' playlist from Acornonaut as an Anki deck"
```

## 🔗 Links

- **Product:** https://acornonaut.app
- **Documentation:** https://acornonaut.app/docs/mcp
- **MCP Registry listing:** [`app.acornonaut/mcp`](https://registry.modelcontextprotocol.io/v0/servers?search=acornonaut) in the official MCP Registry
- **MCP Spec:** https://modelcontextprotocol.io

## 📝 License

MIT License - see [LICENSE](LICENSE) file.

---

**Built with** ❤️ **by the Acornonaut team**
