# publishing-l2

-u runs docker container under my my own id, otherwise all files are created as root

Build:

```
docker pull squidfunk/mkdocs-material
docker run --rm -it \
  -u $(id -u):$(id -g) \
  -v "$PWD":/docs \
  squidfunk/mkdocs-material build
```

You shouldn't need this, but the initial config was built using:
```
docker run --rm -it -v ${PWD}:/docs -u $(id -u):$(id -g) squidfunk/mkdocs-material new .
```
