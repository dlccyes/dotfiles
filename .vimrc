let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
call plug#end()
syntax on

"theme
execute "set <A-t>=\et"
nnoremap <A-t> :color default<CR>
execute "set <A-Y>=\ey"
nnoremap <A-Y> :color monokai<CR>
colorscheme monokai

"move line
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
xnoremap <S-Up> :m-2<CR>gv
xnoremap <S-Down> :m'>+<CR>gv

"indent
:set shiftwidth=4 ":set autoindent ">> <<
:set smartindent
:set tabstop=4 " tab indent size
:set expandtab
inoremap <S-Tab> <Esc> << i
noremap <S-Tab> <<
nnoremap <Tab> >>
xnoremap <S-Tab> <gv
xnoremap <Tab> >gv

"line number
nnoremap <C-N> :set number!<CR>
set number!
