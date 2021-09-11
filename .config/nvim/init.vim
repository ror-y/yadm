"  ,_   _,_ ,_           .  ,__,   . -/-
"_/ (__(_/_/ (__(_/_   _/__/ / (__/__/_
"               _/_
"              (/

" Theme & Colors {{{
syntax enable
set termguicolors
" }}}

" Plugins {{{
call plug#begin("~/.vim/plugged")

Plug 'folke/which-key.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'leafOfTree/vim-vue-plugin'

Plug 'preservim/nerdcommenter'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'kshenoy/vim-signature'

Plug 'psliwka/vim-smoothie'

Plug 'qpkorr/vim-bufkill'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Lightline
Plug 'itchyny/lightline.vim'

" Ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Tokyonight (dark blue)
"Plug 'folke/tokyonight.nvim', { 'branch': 'main'}
"colorscheme tokyonight

" GitHub (Dark grey)
"Plug 'projekt0n/github-nvim-theme'
"lua require('github-theme').setup()

" Gruvbox (Retro dark)
"Plug 'gruvbox-community/gruvbox'
"colorscheme gruvbox
"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_colors_red = '#00FF00'

" Gruvbox Flat
"Plug 'eddyekofo94/gruvbox-flat.nvim'
"colorscheme gruvbox-flat
"let g:gruvbox_flat_style = "dark"
  
" Palenight (soothing dark)
"Plug 'drewtempelmeyer/palenight.vim'
"set background=dark
"colorscheme palenight

Plug 'sainnhe/everforest'

call plug#end()
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
set timeoutlen=500

" Everforest (Green dark)
let g:everforest_background = 'hard'
let g:everforest_cursor = 'green'
set background=dark
colorscheme everforest
let g:lightline = {'colorscheme' : 'everforest'}

" }}}

" Search {{{
nmap cp :let @" = expand("%")<cr>
tnoremap <expr> <C-v> '<C-\><C-N>pi'
nnoremap <leader>d :Rg'<CR>
nnoremap <leader>o :GFiles <CR>
nnoremap ; :
" }}}

" Scrolling {{{
set scrolloff=30
nnoremap j jzz
nnoremap k kzz
nnoremap J }
nnoremap K {
nnoremap <Down> jzz
nnoremap <Up> kzz
nnoremap G Gzz
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
\ 'coc-rls',
\ 'coc-tabnine'
\ ]
" }}}

" Markers {{{
nnoremap <leader>m :marks<CR>
" }}}

" Git {{{
nnoremap <leader>a :Git blame<CR>
nnoremap <leader>og :Gbrowse<CR>
" }}}

" Buffer management {{{
nnoremap <leader>w :bd<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>. :vertical resize +5<CR>
nnoremap <leader>= :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>, :vertical resize -5<CR>
" }}}

" File management {{{
nnoremap <C-b> :buffers <CR>
nnoremap  <silent> <leader><Tab>    :bnext!<CR>
nnoremap  <silent> <leader><S-Tab>  :bprevious!<CR>
nnoremap  <silent> <Tab>            <C-^>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader><leader> <c-^>
" }}}

" Save files {{{
nnoremap <leader>s :wa<CR>
" }}}

" Misc {{{
nnoremap ; :
set cursorline
" }}}

" Section Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap <,> za
" }}}

" vim:foldmethod=marker:foldlevel=0

