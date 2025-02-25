# My Dotfiles ⚗

##### Installation:

* Clone dotfiles
```
git clone https://github.com/zoerab/dotfiles.git ~/dotfiles
```
* ZSH setup

Install [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)

Via **CURL**

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Via **WGET**

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* Get some decent fonts (that support glyphs)

Mine personal favorites are "Hack Nerd Font", get them [here](https://www.nerdfonts.com/font-downloads)

* Install ZSH goodies


[Powerlevel10k](https://github.com/romkatv/powerlevel10k)

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Get the preconfigured p10k theme setup

```
ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
```

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

[zsh-syntax-highlighting](https://github.com/mattjj/my-oh-my-zsh/tree/master/plugins/zsh-syntax-highlighting)

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

ZSHRC + aliases file linking

Back-up pre-existing zshrc

```
mv ~/.zshrc{,.bak}
```

Place config files
```
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```

```
ln -s ~/dotfiles/zsh/.LESS_TERMCAP ~/.LESS_TERMCAP
```

```
ln -s ~/dotfiles/zsh/.aliases ~/.aliases
```


* Tmux and TPM
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
```
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```
Run `tmux` and press **prefix + I** (capital I, as in Install) to fetch all plugins.


* Eza
```
ln -s ~/dotfiles/eza/one_dark.yml ~/.config/eza/theme.yml
```


* Neovim

Backup your stuff first just in case...
```
mv ~/.config/nvim{,.bak}
```

Symlink the entire nvim directory
```
ln -s ~/dotfiles/nvim/ ~/.config/nvim
```

* Wireshark

```
mv ~/.config/wireshark/profiles{,.bak}
ln -s ~/dotfiles/wireshark/profiles ~/.config/wireshark/profiles
```


Pat yourself on your back an have a `insert_beverage_here` for a job well done! 🍻
