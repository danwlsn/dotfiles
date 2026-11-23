SHELL := /bin/bash
DOTFILES_DIR := $(CURDIR)
DEST_DIR := $(HOME)
FILES := zshrc gitconfig tmux.conf
SYMLINKS := $(patsubst %,$(DEST_DIR)/.%,$(FILES))

.PHONY: all macos-brew ohmyzsh fix-ssh-perms
all: $(SYMLINKS) ~/.config/nvim ~/.config/ghostty ~/.config/herdr/config.toml ~/.config/rex

$(DEST_DIR)/.%: $(DOTFILES_DIR)/%
	@echo "🔗 Linking $< to $@"
	@ln -sf $< $@

~/.config/nvim: nvim
	@echo "🔗 Linking $< to $@"
	@ln -sf "$(DOTFILES_DIR)/$<" $@

~/.config/ghostty: ghostty
	@echo "🔗 Linking $< to $@"
	@ln -sf "$(DOTFILES_DIR)/$<" $@

~/.config/herdr/config.toml: herdr/config.toml
	@mkdir -p ~/.config/herdr

~/.config/rex: rex
	@echo "🔗 Linking $< to $@"
	@ln -sf "$(DOTFILES_DIR)/$<" $@

macos-setup:
	/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle --all
	./bin/defaults.sh

ohmyzsh:
	/bin/bash -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

fix-ssh-perms:
	@chmod 700 ~/.ssh
	@chmod 644 ~/.ssh/id_rsa.pub
	@chmod 600 ~/.ssh/id_rsa
