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

Install ZSH goodies

[Alien PROMPT](https://github.com/eendroroy/alien)


[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

[zsh-syntax-highlighting](https://github.com/mattjj/my-oh-my-zsh/tree/master/plugins/zsh-syntax-highlighting)

```
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

ZSHRC + aliases file linking

```
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
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

* Vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
```
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
```
Start Vim and `:PlugInstall` to install plugins

---

Pat yourself on your back an have a `insert_beverage_here` for a job well done! 🍻

Hit me up on [Twitter](https://twitter.com/zoerab) for comments, tips, suggestions!
