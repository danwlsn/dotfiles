# .dotfiles round 2

## Set up instructions

### Install dependiecies

[Install docker](https://docs.docker.com/engine/install/)


### Linux
```bash
# apt-get deps.txt
sudo apt-get install neovim tmux zsh ripgrep emacs
```

### Mac
```bash
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew deps.txt
brew install neovim tmux zsh ripgrep
```

### Emacs
#### Install on macOS
[docs](https://github.com/hlissner/doom-emacs/blob/develop/docs/getting_started.org#on-macos)

```bash
brew install coreutils fd
# Installs clang
xcode-select --install
brew tap railwaycat/emacsmacport
brew install emacs-mac --with-modules
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications/Emacs.app
```

- [ ] TODO: update symlink, not sure if this is right

#### Doom 
```bash
# Install doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
```

- [ ] TODO: repo for doom config


### Oh My ZSH
[Docs](https://ohmyz.sh/#install)

``` bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Symlink files and folders

```bash
chmod +x install.sh
./install.sh
```

### Colours
[Base16 gallery](https://belak.github.io/base16-emacs/#sec-1-1)


``` bash
git clone https://github.com/chriskempson/base16-iterm2.git ~/base16-iterm2
```

