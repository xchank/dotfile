call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()




" BELOW ARE THEME
" Unified color scheme (default: dark)
colo seoul256

" Light color scheme
" colo seoul256-light

" Switch
set background=dark
" set background=light

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

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



" BELOW ARE YCM
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }



" BELOW ARE KEY MAP
let mapleader=" "
:nnoremap <leader>t :tabnew<cr>
:nnoremap <leader>T :tabclose<cr>
:nnoremap <leader><tab> :tabnext<cr>
:nnoremap <leader>w :vs<cr><C-w><right>
:nnoremap <leader>W :sp<cr><C-w><down>
