# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a macOS dotfiles repository that manages shell configuration (zsh), editor settings (neovim, VSCode), and package management via Homebrew.

## Commands

```shell
# Deploy dotfiles (create symlinks to home directory)
make deploy

# Install all packages (Homebrew, casks, VSCode extensions)
make install

# Update package lists from current system state
make update

# Update zinit and plugins
zinit-update

# Update everything (macOS software, brew, zinit)
update-all
```

## Repository Structure

- `Makefile` - Main entry point for deployment and installation
- `.zshrc` - Entry point that sources modular zsh configs from `zsh/`
- `zsh/` - Modular zsh configuration:
  - `alias.zsh` - Shell aliases (tmux, git, docker, vim->nvim)
  - `function.zsh` - Custom functions (nsc, zinit-update, update-all, skill)
  - `path.zsh` - PATH configuration
  - `plugins.zsh` - Zinit plugin management
  - `config.zsh` - Shell options and settings
  - `.p10k.zsh` - Powerlevel10k theme configuration
- `.config/nvim/` - Neovim configuration
- `pkg/` - Package lists for reproducible setup:
  - `brew.txt` - Homebrew formulae
  - `cask.txt` - Homebrew casks
  - `brew_tap.txt` - Homebrew taps
  - `vscode_extensions.txt` - VSCode extensions
- `bin/` - Installation scripts

## Requirements

- Nerd Font (HackGen) must be installed for proper glyph display
- macOS with Xcode command line tools
