DOTFILES_DIR := $(CURDIR)
DEST_DIR := $(HOME)
FILES := zshrc gitconfig tmux.conf
SYMLINKS := $(patsubst %,$(DEST_DIR)/.%,$(FILES))

.PHONY: all macos-brew ohmyzsh fix-ssh-perms
all: $(SYMLINKS) ~/.config/nvim

$(DEST_DIR)/.%: $(DOTFILES_DIR)/%
	@echo "🔗 Linking $< to $@"
	@ln -sf $< $@

~/.config/nvim: nvim
	@echo "🔗 Linking $< to $@"
	@ln -sf $< $@

macos-setup:
	@/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@brew bundle --all
	@./bin/defaults.sh

ohmyzsh:
	@/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

fix-ssh-perms:
	@chmod 700 ~/.ssh
	@chmod 644 ~/.ssh/id_rsa.pub
	@chmod 600 ~/.ssh/id_rsa
