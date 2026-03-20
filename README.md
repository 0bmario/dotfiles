# Dotfiles

This repo is now structured as a chezmoi source repo for macOS bootstrap.

## Source Of Truth

- `home/dot_config/nvim/` is the authoritative Neovim source state.
- `home/dot_tmux.conf` is the authoritative tmux source state.
- `Brewfile` defines the core packages needed by this setup on a new Mac.
- `.chezmoiroot` points chezmoi at `home/`, so repo files like this README are not applied to `$HOME`.

The top-level Neovim files in this checkout are local symlinks back into `home/dot_config/nvim/`. That keeps the current machine working while avoiding drift between the live config and the chezmoi source.

## New Mac

1. Install Xcode Command Line Tools with `xcode-select --install`.
2. Install chezmoi with the official one-liner:
   `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:0bmario/dotfiles.git`
3. The first apply will install Homebrew if needed and then run `brew bundle` from `Brewfile`.

This repo is private, so the one-liner assumes the new Mac already has GitHub SSH access configured.

## Current Coverage

- Neovim
- tmux
- Git config
- Core CLI packages for this config: `git`, `git-lfs`, `neovim`, `tmux`, `ripgrep`, `fd`, `fzf`, `stylua`, `lua-language-server`

## Next Sensible Adds

- `home/dot_zshrc`
- `home/dot_config/ghostty/`
- Secrets or machine-specific data through chezmoi templates
