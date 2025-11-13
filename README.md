# .dotfiles

## Set up instructions


### ssh key permisions

``` bash
make fix-ssh-perms
```


### Linux
```bash
# apt-get Brewfile
sudo apt install neovim tmux zsh ripgrep grep docker fd pyenv uv # ...
```


### Mac
```bash
make macos-setup # install homebrew, brews and run ./bin/defaults.sh
```


### Oh My ZSH
[Docs](https://ohmyz.sh/#install)

``` bash
make ohmyzsh
```

### Symlink files and folders

```bash
make # symlink dotfiles and config
```

### Colours
[Base16 galery](https://tinted-theming.github.io/base16-emacs/)

**Current colours:**
- Base16-eighties in the terminal
- Base16-woodland in the editor


``` bash
git clone https://github.com/chriskempson/base16-iterm2.git ~/base16-iterm2
```

[Jetbrains mono font as well](https://www.jetbrains.com/lp/mono/)


## Nice apps
* [MacOS hidden menu bar](https://github.com/dwarvesf/hidden)
