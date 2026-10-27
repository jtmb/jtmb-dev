<h1 align="center">
  <a href="https://github.com/jtmb">
    <img src="https://avatars.githubusercontent.com/u/86915618?v=4" alt="Logo" width="" height="125">
  </a>
</h1>

<div align="center">
  <b>jtmb-dev</b> - A personal site.
  <br />
  <br />
  <a href="https://github.com/jtmb/jtmb-dev/issues/new?assignees=&labels=bug&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/jtmb/jtmb-dev/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  .
  <a href="https://hub.docker.com/repository/docker/jtmb92/jtmb-dev/general">Docker Hub</a>
</div>
<br>
<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
    - [Docker Image](#docker-image)
    - [Running on Docker Compose](#running-on-docker-compose)
- [License](#license)

</details>
<br>

### <h1>About </h1>

A personal dev website.


### <h2>Getting Started</h2>
### [Docker Image](https://hub.docker.com/r/jtmb92/jtmb-dev)
```docker
 docker pull jtmb92/jtmb-dev
```
### Running on Docker Compose  
Run on Docker Compose (this is the recommended way) by running the command "docker compose up -d".  
```yaml
---
services:
  jtmb-dev:
    image: jtmb92/jtmb-dev:latest
    ports:
      - "8080:80"
```
## License

This project is licensed under the **GNU GENERAL PUBLIC LICENSE v3**. Feel free to edit and distribute this template as you like.

See [LICENSE](LICENSE) for more information.

## Source-backed production maintenance

The runtime is pinned to the maintained official Nginx1.30.6 Alpine image. Static
application content remains in this repository. No dependency install runs on
the host or in the production container. The exact jQuery4.0.0 distribution is
vendored, verified against its npm SHA512 integrity and identical official CDN
bytes; package-lock.json and dependencies.provenance.json record its origin and
security-advisory comparison. Its MIT license is bundled. Existing application
JavaScript, CSS, profile image, text and navigation remain. The home page's broken
Modernizr path is corrected. Old cached script URLs redirect to maintained assets;
the vulnerable jQuery2.1.4 code is no longer shipped.

GitHub Actions stays disabled. `ops/publish.py` uses the existing Docker Hub
account and immutable `git-<full-source-commit>` tags, with exact source labels and
remote byte/digest checks. It exports only committed application/lock/config files;
no Git history, credentials, host dependencies or build cache enters the image.
The isolated builder's storage/resource/cleanup procedure is documented in ops/.
Update the private branconet-charts image digest only after the resulting image
passes its security/source/runtime checks; local validation promotes validated
for Flux to reconcile. Production and independent-restart acceptance must preserve
all unrelated resource specs/routes/content; final browser validation follows all
implementation. A published image alone does not establish production acceptance.
