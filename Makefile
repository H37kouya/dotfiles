
DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .config
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))
ZSH_DIR           := zsh

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(ZSH_DIR), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	ln -sfnv ~/dotfiles/.config/nvim $(HOME)/.config/nvim;

install:
	sh ./bin/install.sh

update:
	sh ./bin/update.sh
