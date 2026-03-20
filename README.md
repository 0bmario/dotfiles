# Dotfiles

This repo now acts as a chezmoi source tree.

## Layout

- `dot_config/nvim/` is the source state for your Neovim config.
- `dot_tmux.conf` is the source state for `~/.tmux.conf`.
- The top-level files in the repo are the current live Neovim config.

## New Machine Flow

1. Install Homebrew.
2. Install chezmoi.
3. Clone this repo.
4. Run `chezmoi init --apply /path/to/this/repo`.

If you want to add more tools later, add more source-state files at the repo root, for example:

- `dot_zshrc`
- `dot_gitconfig`
- `dot_config/alacritty/alacritty.toml`

