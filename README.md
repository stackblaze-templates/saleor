# Saleor [![Version](https://img.shields.io/badge/version-3.20-5624d0)](https://github.com/stackblaze-templates/saleor) [![Maintained by StackBlaze](https://img.shields.io/badge/maintained%20by-StackBlaze-blue)](https://stackblaze.com) [![Weekly Updates](https://img.shields.io/badge/updates-weekly-green)](https://github.com/stackblaze-templates/saleor/actions) [![Deploy on StackBlaze](https://img.shields.io/badge/Deploy%20on-StackBlaze-orange)](https://stackblaze.com)

<p align="center"><img src="logo.png" alt="Saleor" width="120"></p>

A headless, GraphQL-first e-commerce platform built with Python and Django. Saleor provides a modular backend with a separate React dashboard and app system for extensions.

> **Credits**: Built on [Saleor](https://saleor.io) by [Saleor Commerce](https://github.com/saleor). All trademarks belong to their respective owners.

## Deploy on StackBlaze

[![Deploy on StackBlaze](https://img.shields.io/badge/Deploy%20on-StackBlaze-orange)](https://stackblaze.com)

This template includes a `stackblaze.yaml` for one-click deployment on [StackBlaze](https://stackblaze.com).

## Local Development

```bash
docker compose up
```

See the project files for configuration details.

## App Development

Saleor uses an app-based extension system. Custom apps go in `apps/`.

See [Saleor App Development](https://docs.saleor.io/docs/developer/extending/apps/overview) docs.

---

### Maintained by [StackBlaze](https://stackblaze.com)

This template is actively maintained by StackBlaze. We perform **weekly automated checks** to ensure:

- **Up-to-date dependencies** — frameworks, libraries, and base images are kept current
- **Security scanning** — continuous monitoring for known vulnerabilities and CVEs
- **Best practices** — configurations follow current recommendations from upstream projects

Found an issue? [Open a ticket](https://github.com/stackblaze-templates/saleor/issues).
