# .dotfiles round 2

## Set up instructions

### Install dependiecies

[Install docker](https://docs.docker.com/engine/install/)


#### Linux
```bash
# apt-get deps.txt
sudo apt-get install neovim tmux zsh ripgrep
```

#### Mac
```bash
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew deps.txt
brew install neovim tmux zsh ripgrep
```

### Doom emacs
```bash
# Install doom emacs
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
```


### Symlink files and folders

```bash
chmod +x install.sh
./install.sh
```
