set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set mouse=a
set softtabstop=4

" junegunn/vim-plug
call plug#begin()

Plug 'https://github.com/tpope/vim-surround' " surround
Plug 'https://github.com/preservim/nerdtree' " nerdtree
Plug 'https://github.com/tpope/vim-commentary' " commentary
Plug 'https://github.com/vim-airline/vim-airline' " status bar
Plug 'vim-airline/vim-airline-themes' " status bar themes
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " retro scheme
Plug 'https://github.com/tpope/vim-fugitive.git' " git related

call plug#end()

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

colorscheme snow

let g:airline_extensions=[]
let g:airline_theme='deus'
let g:airline_powerline_fonts=1
let g:airline_section_z='Line:%l/%L(%p%%) Char:%v'