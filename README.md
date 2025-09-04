# publishing-l2

-u runs docker container under my my own id, otherwise all files are created as root

## Local Build

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

## GitHub Actions with SSH Debug Access

This repository includes GitHub Actions workflows that provide SSH access for debugging:

### Debug Build Workflow
- **File**: `.github/workflows/debug-build.yml`
- **Trigger**: Manual workflow dispatch with debug option
- **Features**: 
  - Optional SSH session for debugging
  - Regular build with artifact upload
  - Interactive debugging when enabled

### SSH Debug Session
- **File**: `.github/workflows/ssh-debug.yml`
- **Trigger**: Push to main/master branches or manual dispatch
- **Features**:
  - Always provides SSH access
  - Shows environment information
  - Interactive debugging session

### How to Use SSH Debug Sessions

1. **For manual debugging**: Go to Actions → Debug Build → Run workflow → Enable debug mode
2. **For automatic debugging**: Push to main/master branch (triggers SSH Debug Session)
3. **Connect via SSH**: Use the provided URL in the action-tmate step output
4. **Debug interactively**: Run commands, inspect files, test builds
5. **End session**: Press Ctrl+C in the "Keep SSH session alive" step

The SSH sessions are limited to the repository owner and last up to 1 hour.
