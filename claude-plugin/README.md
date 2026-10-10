# Acornonaut for Claude

Acornonaut turns YouTube videos and playlists into spaced-repetition flashcards. This plugin
connects Claude to your Acornonaut account so you can add a video by link and have cards generated
from its transcript, run a review session on the cards that are due today, search and edit your
cards and playlists, check your study stats, and export a deck to Anki, CSV, JSON or Markdown.

## Install

Add **Acornonaut** from Claude's plugin directory on claude.ai. It then works in Claude chat, Cowork and
Claude Code.

## What it contains

- **MCP server** (`.mcp.json`): the remote Acornonaut server at `https://mcp.acornonaut.app/mcp`.
  You sign in with your Acornonaut account through OAuth the first time Claude uses it.
- **Skill** `acornonaut-study`: tells Claude how to make cards from a video, run a review session
  with Again / Hard / Good / Easy ratings, and export decks.

The plugin runs no local code and installs no packages.

## Data

Claude sends Acornonaut only the requests you make through it, such as a video link or the rating
you gave a card, and receives the data needed to answer them: your playlists, flashcards,
transcripts and study statistics. Acornonaut does not receive your conversations with Claude. See
the [privacy policy](https://acornonaut.app/privacy) and [terms](https://acornonaut.app/terms).
You can disconnect Claude at any time under Settings → Connected apps on acornonaut.app.

## Services that process your data

The plugin itself only calls the Acornonaut connector. To answer those requests, Acornonaut's
servers use these subprocessors:

| Service | What it receives | Why |
| --- | --- | --- |
| YouTube (Google) | The video IDs you add | Fetching video details and captions |
| OpenAI, or Anthropic | Video transcripts | Generating flashcards |
| Groq | Audio of videos without captions | Transcription (Whisper) |
| LangSmith | Transcripts and generated cards from AI calls | Monitoring card quality |
| Cloudflare | All Acornonaut data | Hosting, database and queues |
| Clerk | Your email and sign-in details | Accounts and sign-in |
| Sentry | Error reports | Diagnosing failures |

Details are in the [privacy policy](https://acornonaut.app/privacy).

## Requirements

A free or Pro Acornonaut account at [acornonaut.app](https://acornonaut.app). Free accounts have
playlist and monthly video limits.

## Support

[acornonaut.app/support](https://acornonaut.app/support) or
[support@acornonaut.app](mailto:support@acornonaut.app). Documentation:
[acornonaut.app/docs/mcp](https://acornonaut.app/docs/mcp).
