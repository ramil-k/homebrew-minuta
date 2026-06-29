# homebrew-minuta

Homebrew tap for [Minuta](https://minuta.tools) — a native macOS/iOS time tracker
with Automerge CRDT storage.

## Install

```sh
brew tap ramil-k/minuta

# CLI
brew install minuta

# Desktop app
brew install --cask minuta
```

The CLI ships with man pages (`man minuta`) and bash/zsh/fish completions.

## Gatekeeper note (app)

The app is signed but not Apple-notarized. The cask clears the quarantine
attribute on install so it launches normally. If macOS still blocks it, run:

```sh
xattr -dr com.apple.quarantine /Applications/Minuta.app
```

or right-click the app and choose **Open** once.

## Release flow (maintainer)

Artifacts are built from the private source repo and hosted on minuta.tools:

1. In the source repo: `scripts/release-brew.sh` builds
   `dist/minuta-cli-<v>.tar.gz` and `dist/Minuta-<v>.zip` and prints SHA256s.
2. `scripts/upload-brew-artifacts.sh` rsyncs `dist/` to
   `https://minuta.tools/downloads/`.
3. Bump `url`, `version`, and `sha256` in `Formula/minuta.rb` and
   `Casks/minuta.rb` here, then commit.
