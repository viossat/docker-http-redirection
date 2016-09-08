# viossat/http-redirection

Redirects all HTTP requests to another domain.

- Alpine-based, 6.1 MB
- Redirects to the complete requested URL (with path and GET params)
- Environment variables
  - `TARGET`: the target domain, example.com by default, http:// prepented if protocol not specified
  - `CODE`: the response code, 301 by default

## Usage

```bash
docker run -d -p 80:80 -e TARGET=https://example.com viossat/http-redirection
```
