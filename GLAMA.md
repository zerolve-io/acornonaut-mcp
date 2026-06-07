# Acornonaut MCP Server

Official MCP server for AI-powered flashcard generation from YouTube videos.

**Production endpoint:** https://mcp.acornonaut.app

## For Glama Testing

This Dockerfile provides a lightweight proxy for Glama's automated checks. The proxy forwards all requests to the production OAuth-enabled endpoint.

**Note:** Glama introspection will work against the proxy. Full OAuth flows require the hosted endpoint.

## Configuration

```json
{
  "mcpServers": {
    "acornonaut": {
      "url": "https://mcp.acornonaut.app"
    }
  }
}
```

## More Info

- Documentation: https://acornonaut.app/docs/mcp
- Main repository: https://github.com/zerolve-io/coursecards
