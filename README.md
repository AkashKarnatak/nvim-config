# MY NEOVIM CONFIGURATIONS
Before using these configurations you'll need to install a few dependecies.

### Prerequisite
Make sure that `python3` and `node` are installed. Install a patched [Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts).
```sh
sudo apt install git cmake dialog fzf ripgrep universal-ctags silversearcher-ag fd-find
# (Optional) If python 2 is installed
python2 -m pip install pynvim
# Python3
pip3 install pynvim pylint ranger-fm ueberzug
# For conda users
conda install -c conda-forge pynvim
conda install -c anaconda pylint
pip install ueberzug
# Node
npm install -g neovim
```

### Set things up
```sh
git clone https://github.com/AkashKarnatak/nvim-config
mkdir -p ~/.config/
mv nvim-config ~/.config/nvim
```

Append this line to the end of your `~/.inputrc`
```sh 
"\C-H":"\C-W"
```

Now fire up neovim and install all the plugins
```vim
:PlugInstall
" (Optional) Coc-extensions
:CocInstall coc-vimlsp coc-tsserver coc-snippets coc-python coc-json coc-highlight coc-explorer
```
_Now you rock!!!_
