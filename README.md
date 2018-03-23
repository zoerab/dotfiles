# My Dotfiles ⚗

##### Installation:

* Clone dotfiles
```
git clone https://github.com/zoerab/dotfiles.git ~/dotfiles
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
