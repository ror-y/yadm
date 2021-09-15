"  ,_   _,_ ,_           .  ,__,   . -/-
"_/ (__(_/_/ (__(_/_   _/__/ / (__/__/_
"               _/_
"              (/


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

Plug 'tpope/vim-surround'

Plug 'sainnhe/everforest'

Plug 'christoomey/vim-sort-motion'

Plug 'tpope/vim-repeat'

Plug 'vim-scripts/VimIRC.vim'

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
set timeoutlen=900
set spell spelllang=en_US

let g:everforest_background = 'hard'
let g:everforest_cursor = 'green'
set background=dark
colorscheme everforest
let g:lightline = {'colorscheme' : 'everforest'}

set belloff=all

autocmd VimResized * wincmd =
" }}}

" Theme & Colors {{{
syntax enable
set termguicolors
" }}}

" Search {{{
nmap cp :let @" = expand("%")<cr>
tnoremap <expr> <C-v> '<C-\><C-N>pi'
nnoremap <leader>d :Rg'<CR>
nnoremap <leader>o :GFiles <CR>
set incsearch
set hlsearch
set ignorecase
" }}}

" Scrolling {{{
set scrolloff=30
nnoremap j jzz
nnoremap k kzz
nnoremap J }zz
nnoremap K {zz
nnoremap G Gzz
nnoremap {  {zz
nnoremap }  }zz
nnoremap n  nzz
nnoremap N  Nzz
nnoremap [c [czz
nnoremap ]c ]czz
nnoremap [j <C-o>zz
nnoremap ]j <C-i>zz
nnoremap [s [szz
nnoremap ]s ]szz
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" }}}

" Config files {{{
nnoremap <leader>ea :vsplit ~/.config/alacritty/alacritty.yml<CR>
nnoremap <leader>ec :vsplit ~/code/chess/app/config/config_dev_local.yml<CR>
nnoremap <leader>ep :vsplit ~/code/chess/app/config/parameters.yml<CR>
nnoremap <leader>et :vsplit ~/.tmux.conf<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>ez :vsplit ~/.zshrc <CR>
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


let g:dashboard_custom_header = [
\'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@@@((###(((/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@#(###((((((*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@#((((((((((*&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@@#(((((((**@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@@(((((((***(@@@(............@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@#((((((((((*#@@.......&@@@@,..@@.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@@@@******#@@.....@@@@@@@@@@@@@..............@@@@@,..........#@@@@............@@&...........*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@@@@((((/*@@.....@@@@@@@@@@@@@@......@@@%.....@@%....@@@@@*....@@....%@@@@@@@@@%....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@@@@@(((((/*@@.....@@@@@@@@@@@@@@.....@@@@@*....@@...............#@..........*@@@@.........,#@@@@@@@......*@@.......@@@......*.....*@@',
\'@@@@@@@@@(((((((**(@@.....@@@@@@@@@@@@@.....@@@@@/....@@....*&&&&&&&&&&@@@@@&*.........@@@@&/........&@@@.,@@@@@@(.%@@@@@*.&@.,@@@(.(@@@*.&@',
\'@@@@@@(((((((((/***/@@.......*%@&*...@@.....@@@@@/....@@@.....&@@@@@*,@@@@,%@@@@@@(....@@.#@@@@@@....(@@@.,@@@@@@/.&@@@@@(.&@.*@@@#.#@@@/.%@',
\'@@@@(((((((((((******(@@@............@@.....@@@@@/....@@@@@............@@.............@@............@@..@@..,(*.*@%..*(,..@@@.*@@@#.#@@@/.%@',
\'@@@**//(((((/***********/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@*************************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\'@@@@@@@&(************/#&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@',
\]

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

set splitbelow
set splitright
" }}}

" File management {{{
nnoremap <C-b> :buffers <CR>
nnoremap  <silent> <leader><Tab>    :bnext!<CR>
nnoremap  <silent> <leader><S-Tab>  :bprevious!<CR>
nnoremap  <silent> <Tab>            <C-^>
nnoremap <leader><leader> <c-^>
nnoremap <leader>h :History<CR>
" }}}

" Save files {{{
nnoremap <leader>s :wa<CR>
" }}}

" Editing files {{{
nnoremap c "_c
nnoremap C "_C
" }}}

" Misc {{{
set cursorline
let loaded_netrw = 0

let s:undodir = "/tmp/.undodir_" . $USER
if !isdirectory(s:undodir)
    call mkdir(s:undodir, "", 0700)
endif
let &undodir=s:undodir
set undofile
" }}}

" Section Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap <,> za
" }}}

" vim:foldmethod=marker:foldlevel=0

