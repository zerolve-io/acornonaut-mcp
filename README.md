# Acornonaut MCP Server

![MCP](https://img.shields.io/badge/MCP-compatible-green)

Acornonaut is **AI-powered video learning**: turn YouTube playlists into high-quality flashcards, then query your learning library directly from any MCP-compatible AI client.

This repository is a thin public wrapper for the hosted Acornonaut MCP endpoint (no server source code).

## Endpoint

- **Transport:** Streamable HTTP
- **URL:** `https://acornonaut.app/api/mcp`
- **Full docs:** https://acornonaut.app/docs/mcp

## Authentication

Use your Acornonaut API key in either header:

- `Authorization: Bearer <your_api_key>` (recommended)
- `x-api-key: <your_api_key>`

> Keep your API key secret. Never commit it to source control.

## Quick Connect

### Claude Desktop

`~/Library/Application Support/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://acornonaut.app/api/mcp",
      "headers": {
        "Authorization": "Bearer ak_your_api_key_here"
      }
    }
  }
}
```

### Cursor

`~/.cursor/mcp.json`

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://acornonaut.app/api/mcp",
      "transport": "streamable-http",
      "headers": {
        "Authorization": "Bearer ak_your_api_key_here"
      }
    }
  }
}
```

### Windsurf

Use MCP Server settings and provide:

- **Name:** `acornonaut`
- **URL:** `https://acornonaut.app/api/mcp`
- **Transport:** `streamable-http`
- **Header:** `Authorization: Bearer ak_your_api_key_here`

Or JSON form:

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://acornonaut.app/api/mcp",
      "transport": "streamable-http",
      "headers": {
        "Authorization": "Bearer ak_your_api_key_here"
      }
    }
  }
}
```

### VS Code (MCP-compatible extensions)

For MCP extensions that accept JSON config:

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://acornonaut.app/api/mcp",
      "transport": "streamable-http",
      "headers": {
        "Authorization": "Bearer ak_your_api_key_here"
      }
    }
  }
}
```

### OpenClaw / mcporter

#### OpenClaw-style config snippet

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://acornonaut.app/api/mcp",
      "transport": "streamable-http",
      "headers": {
        "Authorization": "Bearer ak_your_api_key_here"
      }
    }
  }
}
```

#### mcporter example

```bash
mcporter call acornonaut list_playlists '{}'
```

## Tool Reference

Acornonaut currently exposes the following MCP tools:

| Tool | Parameters | Description |
|---|---|---|
| `list_playlists` | `page?: number`, `limit?: number` | List your playlists with status and pagination. |
| `get_playlist` | `id: string` | Get one playlist with videos and associated cards. |
| `create_playlist` | `url: string` | Create a playlist from a YouTube URL and start processing. |
| `get_cards` | `playlistId: string`, `page?: number`, `limit?: number` | Fetch paginated flashcards for a playlist. |
| `search_cards` | `query: string`, `limit?: number` | Full-text search across your flashcards. |
| `get_quota` | _none_ | Check plan limits and current usage/quota status. |
| `export_deck` | `playlistId: string`, `format?: "apkg" | "csv" | "json"` | Export a playlist deck for external study tools. |

## Example (curl)

```bash
curl -s -X POST https://acornonaut.app/api/mcp \
  -H "Authorization: Bearer ak_your_api_key_here" \
  -H "Content-Type: application/json" \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "tools/call",
    "params": {
      "name": "list_playlists",
      "arguments": { "page": 1, "limit": 10 }
    }
  }'
```

## Why Acornonaut 🎯

- Turn long-form YouTube learning into active recall
- Build reusable knowledge decks from playlists
- Query and review knowledge from your AI tools

## Links

- Product: https://acornonaut.app
- MCP docs: https://acornonaut.app/docs/mcp
