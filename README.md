# homebrew-klustr

Homebrew tap for [Klustr](https://github.com/SametKUM/klustr) — a cross-platform Kubernetes desktop client.

## Install

```bash
brew install --cask sametkum/klustr/klustr
```

Or tap once and install:

```bash
brew tap sametkum/klustr
brew install --cask klustr
```

## Upgrade

```bash
brew upgrade --cask klustr
```

## Uninstall

```bash
brew uninstall --cask klustr
brew untap sametkum/klustr
```

## Requirements

- macOS 11 (Big Sur) or newer
- Apple Silicon (`arm64`)

Intel builds will be added once they ship in the [main Klustr release pipeline](https://github.com/SametKUM/klustr/blob/main/.github/workflows/release.yml).

## How updates land

Every new Klustr release tag triggers an automated cask bump from the main repository's release workflow. The `version` and `sha256` fields in `Casks/klustr.rb` are updated by CI; manual edits are usually not needed.
