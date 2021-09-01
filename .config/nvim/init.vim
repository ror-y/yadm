                          call plug#begin("~/.vim/plugged")

" Which Key
Plug 'folke/which-key.nvim'

" Fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main'}
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Set theme
if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme tokyonight

let g:airline_theme='deus'

set tabstop=2
set noshowmode
set shiftwidth=2
set expandtab

set number


" Keybindings

" Paste for search
tnoremap <expr> <C-v> '<C-\><C-N>pi'

" Open config files
noremap <C-o>z :e ~/.zshrc <CR>
noremap <C-o>v :e ~/.config/nvim/init.vim <CR>

" Copy path
nmap cp :let @" = expand("%")<cr>
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

