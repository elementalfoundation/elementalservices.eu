# elementalservices.eu

- [Mkdocs - writing your docs](https://www.mkdocs.org/user-guide/writing-your-docs/)

## Preview locally

Pull in the mkdocs docker container:
```
docker pull squidfunk/mkdocs-material
```

Run the docker image, ask it to serve the website.
```
docker run --rm -it \
  -u $(id -u):$(id -g) \
  -p 8000:8000 \
  -v "$PWD":/docs \
  squidfunk/mkdocs-material \
  serve -a 0.0.0.0:8000
  ```
Then visit at https://localhost:8000.

You can also (only) build the website. The result will be in `site/`.
```
docker pull squidfunk/mkdocs-material
docker run --rm -it \
  -u $(id -u):$(id -g) \
  -v "$PWD":/docs \
  squidfunk/mkdocs-material build
```

