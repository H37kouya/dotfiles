
DOTFILES_EXCLUDES := .DS_Store .git .gitmodules
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))
ZSH_DIR           := zsh

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@$(foreach val, $(ZSH_DIR), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

install:
	sh ./bin/install.sh
