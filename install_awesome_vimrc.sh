#!/usr/bin/env bash

set -e

cd ~/.vim_runtime

cat << EOF > ~/.vimrc
" Set runtimepath for vim
let s:config_home=expand('~/.vim_runtime/')
execute 'set runtimepath+=' . s:config_home

" Load plugins
source ~/.vim_runtime/vimrcs/plugins.vim

" Load plugins settings
for s:f in split(glob(s:config_home . 'vimrcs/pluginrc.d/*.vim'), '\n')
  execute 'source' fnameescape(s:f)
endfor

" Load basic settings
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim

" Load custom settings
try
  source ~/.vim_runtime/my_configs.vim
catch
endtry
EOF

mkdir -p "$HOME/.config/nvim/" && ln -sf "$HOME/.vim_runtime/after" "$HOME/.config/nvim/"
mkdir -p "$HOME/.vim/" && ln -sf "$HOME/.vim_runtime/after" "$HOME/.vim/"

ln -sf .vim_runtime/my_configs.vim ~/.vimrc.local
ln -sf .vim_runtime/vimrcs/plugins.vim ~/.plugins.vim
ln -sf .vim_runtime/vimrcs/pluginrc.d/plugins_config.vim ~/.plugins_config.vim

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
