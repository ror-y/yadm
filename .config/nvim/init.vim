"  ,_   _,_ ,_           .  ,__,   . -/-
"_/ (__(_/_/ (__(_/_   _/__/ / (__/__/_
"               _/_
"              (/

" Plugins {{{
call plug#begin("~/.vim/plugged")

Plug 'folke/which-key.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'folke/tokyonight.nvim', { 'branch': 'main'}

Plug 'leafOfTree/vim-vue-plugin'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'kshenoy/vim-signature'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

call plug#end()
" }}}

" Colors {{{
syntax enable
set termguicolors
colorscheme tokyonight
let g:airline_theme='deus'
" }}}

" Tabs and Spaces {{{
set tabstop=2
set noshowmode
set shiftwidth=2
set expandtab
" }}}

" UI {{{
let mapleader = " "
set number
set relativenumber
" }}}

" Search {{{
nmap cp :let @" = expand("%")<cr>
tnoremap <expr> <C-v> '<C-\><C-N>pi'
nnoremap <leader>o :GFiles <CR>
" }}}

" File management {{{
nnoremap <C-b> :buffers <CR>
nnoremap  <silent> <leader><Tab>    :bnext!<CR>
nnoremap  <silent> <leader><S-Tab>  :bprevious!<CR>
nnoremap  <silent> <Tab>            <C-^>
" }}}

" Config files {{{
nnoremap <leader>ez :e ~/.zshrc <CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" }}}

" COC {{{
let g:coc_global_extensions = [
\ 'coc-vimlsp',
\ 'coc-snippets',
\ 'coc-tsserver',
\ 'coc-html',
\ 'coc-css',
\ 'coc-yaml',
\ 'coc-lists',
\ 'coc-sh',
\ 'coc-phpls',
\ 'coc-pairs',
\ 'coc-json',
\ 'coc-eslint',
\ 'coc-rls'
\ ]
" }}}

" Section Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap <,> za
" }}}

" Config files {{{
nnoremap <leader>ez :vsplit ~/.zshrc <CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" }}}

" Markers {{{
nnoremap <leader>m :marks<CR>
" }}}

" Section Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap <,> za
" }}}

" vim:foldmethod=marker:foldlevel=0
