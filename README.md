# .dotfiles round 2

## Set up instructions

### Install tools

- [Install docker](https://docs.docker.com/engine/install/)
- [Install notes](https://apps.apple.com/gb/app/bear-markdown-notes/id1091189122?mt=12)
- [Install browser](https://arc.net)
- [Install terminal](https://iterm2.com/downloads.html)
- [Install music](https://www.spotify.com/de-en/download/other/)
- [Install scroll reverser](https://pilotmoon.com/scrollreverser/)
- TODO: Text expander


### ssh key permisions

``` bash
chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
```


### Linux
```bash
# apt-get deps.txt
sudo apt-get install neovim tmux zsh ripgrep emacs grep
```

### Mac
```bash
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
xargs brew install < deps.txt
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
cp /opt/homebrew/opt/emacs-mac/Emacs /Applications/Emacs.app
```

#### Doom 
```bash
# Install doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
```


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
[Base16 gallery](https://tinted-theming.github.io/base16-emacs/)

**Current colours:**
- Base16-eighties in the terminal
- Base16-woodland in the editor


``` bash
git clone https://github.com/chriskempson/base16-iterm2.git ~/base16-iterm2
```

[Jetbrains mono font as well](https://www.jetbrains.com/lp/mono/)

