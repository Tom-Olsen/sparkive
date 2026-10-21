# Sparkive

Archive of things that spark my interest: lessons on algorithms, mathematics, physics, and other topics I enjoy learning.

Website: [tom-olsen.github.io/sparkive](https://tom-olsen.github.io/sparkive/)

## Local development

Sparkive is a standalone Material for MkDocs site. It does not depend on an Ember checkout.

```sh
python3 -m venv .venv-docs
.venv-docs/bin/python -m pip install -r requirements-docs.txt
./preview.sh
```

The preview script opens Firefox at `http://127.0.0.1:8001/sparkive/` and reloads the page when content changes. Port 8001 lets it run alongside Ember's preview on port 8000. Stop the server with **Ctrl+C** before starting it again.

The script works from any current directory and forwards MkDocs options. To choose another port, run `./preview.sh --dev-addr 127.0.0.1:8002`.

Run `.venv-docs/bin/python -m mkdocs build --strict` before publishing. Generated output is written to `site/` and is ignored by Git.

## Content

- `docs/home/index.md` is the Home landing page; the site root redirects here.
- `docs/computerScience/index.md` is the Computer Science landing page; lessons live in subfolders such as `docs/computerScience/bitonicSort/index.md`.
- `docs/math/index.md` is the Math landing page, currently marked as planned.
- `docs/physics/index.md` is the Physics landing page; its lessons live in `smoothedParticleHydrodynamics/index.md` and `latticeBoltzmannMethod/index.md` beneath that folder.
- `docs/javascripts/` and `docs/stylesheets/` contain lesson visualizations and math configuration.
- `mkdocs.yml` defines the site, extensions, theme modes, header links, and explicit navigation.
- `overrides/` contains the header and navigation templates, matching Ember's layout and scrolling behavior.

Each top-level section has its own folder and `index.md`. Each lesson has a camelCase subfolder with its own `index.md`, matching Ember's page layout. Redirects in `mkdocs.yml` preserve previous page URLs.

The initial lessons and sorting-network visualization were moved from Ember. Bitonic Sort is in progress; the two physics lessons are currently placeholders. Math has a section landing page; its lessons are planned.

## GitHub Pages

In the repository's **Settings → Pages**, select **GitHub Actions** as the build and deployment source. The workflow in `.github/workflows/docs.yml` builds and deploys changes pushed to `main`; it can also be run manually.

The default public URL is `https://tom-olsen.github.io/sparkive/`.