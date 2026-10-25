# Sparkive repository instructions

## Purpose and boundaries

- Sparkive is Tom Olsen's standalone learning site about computer science, mathematics, and physics.
- Write lessons that explain intuition, prerequisites, definitions, assumptions, derivations or proofs, worked examples, and limitations as appropriate. Do not skip important reasoning steps.
- Keep general explanations here. Ember-specific architecture and feature demonstrations belong in the Ember repository; link to them where relevant.
- Preserve existing lesson content and interactive visualizations when reorganizing pages. Clearly identify unfinished lessons; do not invent claims about the author.

## Site structure

- The site uses Material for MkDocs. `mkwebsite.yml` defines metadata, Markdown extensions, assets, and explicit navigation.
- Top-level sections have their own folders: `content/home/`, `content/computerScience/`, `content/math/`, and `content/physics/`. Each section landing page is its folder's `index.md`; `content/home/index.md` is the home page.
- Each lesson has a camelCase subfolder containing `index.md`, such as `content/computerScience/bitonicSort/index.md` or `content/physics/latticeBoltzmannMethod/index.md`, matching Ember's page layout.
- Add new pages to `nav` in `mkwebsite.yml`. Add subject sections when there is content for them.
- Keep lesson-specific JavaScript and CSS in `content/javascripts/` and `content/stylesheets/`.
- Math uses the arithmatex extension and MathJax; preserve their configuration when moving lessons.
- The default public URL is `https://tom-olsen.github.io/sparkive/`.

## Development and publishing

- Install dependencies with `python -m pip install -r requirements.txt` in a virtual environment.
- Run `./preview.sh` for local development. It uses `.venv` when available, opens Firefox, and serves at `http://127.0.0.1:8001/sparkive/` so it can run alongside Ember. Additional MkDocs options are forwarded. Run `mkdocs build --strict --config-file mkwebsite.yml` before publishing.
- `.github/workflows/docs.yml` deploys GitHub Pages from `main`. The repository's Pages source must be GitHub Actions.
- Do not commit generated `site/` output or virtual environments.
- Use camelCase variables and PascalCase methods in new JavaScript, matching the migrated visualization. Do not add a trailing newline to files.