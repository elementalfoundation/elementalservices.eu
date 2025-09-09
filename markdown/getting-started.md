---
title: Getting Started
---

# Getting Started

Welcome to Elemental Publishing - L2. This guide helps you build and preview the site locally and understand the repo layout.

## Prerequisites

- Docker installed, or Python 3.10+ with `pip`.

## Build Locally (Docker)

```bash
docker pull squidfunk/mkdocs-material
docker run --rm -it \
  -u $(id -u):$(id -g) \
  -v "$PWD":/docs \
  squidfunk/mkdocs-material build
```

Artifacts are written to `site/`.

## Live Preview (Python)

```bash
pip install mkdocs-material
mkdocs serve
```

Open http://127.0.0.1:8000 in your browser.

