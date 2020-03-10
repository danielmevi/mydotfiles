let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'arakashic/chromatica.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'roxma/vim-tmux-clipboard'
Plug 'euclio/vim-markdown-composer'
Plug 'airblade/vim-gitgutter'
Plug 'eugen0329/vim-esearch'
Plug 'numirias/semshi'
Plug 'neomake/neomake'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'scrooloose/nerdtree'
Plug 'jalvesaq/vimcmdline'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'haifengkao/nfasd'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>1 :BufExplorer<CR>
nnoremap <leader>2 :BufExplorerVerticalSplit<CR>

nnoremap <leader>f :FlyGrep<CR>

" vimcmdline mappings
let cmdline_map_start          = '<LocalLeader>s'
let cmdline_map_send           = '<Space>'
let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>p'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>q'
" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in Neovim's terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 80     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)
let cmdline_app           = {}
let cmdline_app['sh']     = 'bash'

let g:chromatica#libclang_path='/usr/lib/llvm-8/lib/'
let g:chromatica#enable_at_startup=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set nowrap
set history=100        " How many lines of history to remember
set list           " show whitespace at the end of lines.
set mouse=a        " use mouse everywhere
set textwidth=80
set ignorecase
set smartcase      " overrides ignorecase if uppercase used in search string (cool)
set autoindent    " autoindent
set smartindent   " smartindent
set cindent       " do c-style indenting
set expandtab     " no real tabs please!
set tabstop=4     " tab spacing (settings below are just to unify it)
set shiftwidth=4
retab             " Change existing tabs

" Moves
nnoremap 8 ^
nnoremap 9 $

" Mover across buffers
nnoremap <silent> 1 :bprevious<CR>:redraw<CR>:ls<CR>
nnoremap <silent> 2 :bnext<CR>:redraw<CR>:ls<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NBTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FlyGrep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-f> :FlyGrep<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clang-format
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <C-K> :pyf ~/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/clang-format.py<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cipboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set clipboard=unnamedplus
