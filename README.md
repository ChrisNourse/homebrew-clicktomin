# homebrew-clicktomin

Homebrew tap for [ClickToMin](https://github.com/ChrisNourse/click-to-min) — a macOS menu bar app that minimizes the focused window when you click its Dock icon.

## Install

```
brew install --cask chrisnourse/clicktomin/click-to-min
```

## Update

```
brew upgrade --cask click-to-min
```

## Uninstall

```
brew uninstall --cask click-to-min
```

## How it works

The cask downloads the latest signed release from GitHub, installs to `/Applications`, and clears the quarantine attribute so there's no Gatekeeper warning on first launch.

Updates are automatic via `brew upgrade` — the cask version is bumped by CI on every release tag.
