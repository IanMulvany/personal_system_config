set nocompatible              " required
filetype off                  " required

set shell=/bin/bash 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'christoomey/vim-tmux-navigator'

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Keyboard bindings
" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" when looking at autcomplete options have a look at 
" https://stackoverflow.com/questions/45416839/error-detected-while-processing-bufread-auto-commands-for-py 
"
set encoding=utf-8

" line numbers by default 
set nu 

" OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" set scroll
set mouse=a

" code folding 
let g:SimpylFold_docstring_preview=1

" code completion
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set hlsearch 

let python_highlight_all=1
syntax on

" set commands for syntastic and pylint
" https://stackoverflow.com/questions/28206152/show-only-errors-with-pylint-and-syntastic-in-vim 

colorscheme delek 

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
