# Acornonaut MCP Server - Glama Test Container
# This is a lightweight proxy for Glama's introspection checks
# The actual MCP server is hosted at https://mcp.acornonaut.app

FROM node:24-alpine

WORKDIR /app

# Install minimal dependencies for HTTP proxy
RUN npm install -g http-server

# Create a simple proxy that forwards to the hosted endpoint
COPY <<EOF /app/proxy.js
const http = require('http');
const https = require('https');

const TARGET = 'https://mcp.acornonaut.app';
const PORT = process.env.PORT || 8080;

const server = http.createServer((req, res) => {
  const options = {
    hostname: 'mcp.acornonaut.app',
    port: 443,
    path: req.url,
    method: req.method,
    headers: req.headers
  };

  const proxy = https.request(options, (proxyRes) => {
    res.writeHead(proxyRes.statusCode, proxyRes.headers);
    proxyRes.pipe(res);
  });

  req.pipe(proxy);

  proxy.on('error', (err) => {
    console.error('Proxy error:', err);
    res.writeHead(502);
    res.end('Bad Gateway');
  });
});

server.listen(PORT, () => {
  console.log(\`Acornonaut MCP proxy listening on port \${PORT}\`);
  console.log(\`Forwarding to \${TARGET}\`);
});
EOF

EXPOSE 8080

CMD ["node", "/app/proxy.js"]
