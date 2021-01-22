# MY NEOVIM CONFIGURATIONS
Before using these configurations you'll need to install a few dependecies.

### Prerequisite
Make sure that `python3` and `node` are installed. Install a patched [Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts).
```sh
sudo apt install git cmake dialog fzf ripgrep universal-ctags silversearcher-ag fd-find libx11-dev libxext-dev
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
<!-- Build/install [ccls](https://github.com/MaskRay/ccls/wiki/Build) -->
Build/install [clangd](https://clangd.llvm.org/installation.html)

### Set things up
```sh
git clone https://github.com/AkashKarnatak/nvim-config
mkdir -p ~/.config/
mv nvim-config ~/.config/nvim
```

Create a file `~/.config/ranger/rc.conf` and add the following contents to it

```
set preview_images true
set preview_images_method ueberzug
set draw_borders true
default_linemode devicons
```

Append this line to the end of your `~/.inputrc`
```sh 
"\C-H":"\C-W"
```

Now fire up neovim. You may notice a few Coc errors which are probably due to missing extensions. Therefore install all the plugins and Coc extensions.
```vim
:PlugInstall
" (Optional) Coc-extensions
:CocInstall coc-vimlsp coc-tsserver coc-snippets coc-python coc-json coc-highlight coc-explorer coc-clangd
```
_Now you rock!!!_
