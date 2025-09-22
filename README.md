# .dotfiles

## Set up instructions


### ssh key permisions

``` bash
chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
```


### Linux
```bash
# apt-get Brewfile
sudo apt install neovim tmux zsh ripgrep grep docker fd pyenv uv # ...
```


### Mac
```bash
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --all

# fix the dock
./bin/defaults.sh
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


## Nice apps
* [MacOS hidden menu bar](https://github.com/dwarvesf/hidden)
