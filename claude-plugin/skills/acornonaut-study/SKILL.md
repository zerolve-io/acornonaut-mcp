---
name: acornonaut-study
description: Study with Acornonaut flashcards. Use when the user wants to turn a YouTube video into flashcards, review or get quizzed on the cards that are due, find cards on a topic, check study progress, or export a deck to Anki, CSV, JSON or Markdown.
---

# Studying with Acornonaut

Acornonaut turns YouTube videos into flashcards and schedules them with spaced repetition. All
data lives in the user's Acornonaut account and is reached through the `acornonaut` MCP server.

## Make flashcards from a video

1. Call `add_video_by_url` with the YouTube URL. Pass `playlistName` only if the user named one.
2. Card generation runs in the background and usually takes one to two minutes. Tell the user it
   has started; don't claim cards exist yet.
3. When the user comes back, find the video with `get_playlist` (using the `playlistId` from step
   1. and show its cards with `get_video_cards`.
4. If a video finishes with no cards, `regenerate_cards` retries generation. Only set
   `deleteExisting: true` when the user asks to replace cards they already have.

## Run a review session

1. Call `get_due_cards` (optionally with a `playlistId`). If nothing is due, say so and stop.
2. Show one card at a time: the question first, "Card N of Total", and wait for the user's answer.
3. Reveal the answer, then ask how well they knew it: Again (1), Hard (2), Good (3) or Easy (4).
   Let the user rate it. Don't pick the rating for them; suggest "Again" when they couldn't recall
   it, because honest ratings make the schedule work.
4. Call `record_review` with the card's `cardId` and the rating, then move to the next card.
5. At the end, summarise how many cards were reviewed and how many were rated Again.

## Find, edit and organise

- Topic questions ("my cards about X"): `search_cards`.
- Library overview: `list_playlists`, `get_playlist`, `get_stats`.
- Fixing a card: `update_card`; adding one: `create_card`. Confirm before `delete_card` or
  `delete_playlist`, which are permanent (deleting a playlist removes its videos and cards).

## Export

`export_deck` with a `playlistId` and `format`: `apkg` returns an Anki download link, while `csv`,
`json` and `markdown` return the content directly.

## Limits

Free accounts have playlist and monthly video limits. If a tool reports a limit, explain it
plainly and point to https://acornonaut.app/pricing; don't retry in a loop.
