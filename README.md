# homebrew-tap

Fakih Arief Noto's Homebrew tap.

## Available formulae

| Formula | Description |
|---|---|
| `commitly` | Compose Conventional Commits messages, interactively |

## Install

```sh
brew tap fakihariefnoto/tap
brew install fakihariefnoto/tap/commitly
```

Or, once the tap is added, the shorter form:

```sh
brew install commitly
```

`git cm` works immediately after install — no setup, no alias. The formula
installs the binary under two names: `commitly` and a `git-cm` symlink, so
`git cm` and `git cm -a` are available in any repository with zero config.

## Upgrade

```sh
brew update
brew upgrade commitly
```

## Uninstall

```sh
brew uninstall commitly
brew untap fakihariefnoto/tap
```

## Usage

```sh
git cm                        # compose a conventional commit, interactively
git cm -a                     # pick files to stage, then compose
commitly lint --range origin/main..HEAD
commitly changelog            # release notes since the last tag
commitly status               # what you've committed across every repo
commitly serve                # the same history as a local web page
```

See the [commitly README](https://github.com/fakihariefnoto/commitly) for the
full command reference.
