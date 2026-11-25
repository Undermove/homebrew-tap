# Homebrew tap for Meridian

[Meridian](https://meridianbrowser.app/) is a Chromium-based browser for macOS (Apple silicon) and Windows. This tap installs the macOS build from the [GitHub releases](https://github.com/Undermove/meridian-browser/releases).

## Install

```sh
brew install --cask undermove/tap/meridian
```

Meridian updates itself, so `brew upgrade` leaves it alone unless you add `--greedy`.

## Uninstall

```sh
brew uninstall --cask meridian
```

This removes the app and keeps your profile (tabs, spaces, logins, settings).

To also delete the profile, caches and preferences:

```sh
brew uninstall --cask --zap meridian
```

## How the cask stays current

A daily workflow (`.github/workflows/bump.yml`) checks the latest Meridian release and updates `version` and `sha256` in `Casks/meridian.rb` when a newer one is out. The release script in the Meridian repo (`chromium/tools/bump_cask.sh`) does the same right after a release.
