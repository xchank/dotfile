" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 0

" BELOW ARE MISC
set number
syntax on
set tabstop=4
set shiftwidth=4
" highlight the line that cursor in
set cursorline
" highlight all the search result
set hlsearch
" search while typing
set incsearch


" BELOW ARE KEY MAP
let mapleader=" "
:nnoremap <leader>t :tabnew<cr>
:nnoremap <leader>T :tabclose<cr>
:nnoremap <leader><tab> :tabnext<cr>
:nnoremap <leader>w :vs<cr><C-w><right>
:nnoremap <leader>W :sp<cr><C-w><down>
