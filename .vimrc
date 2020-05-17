" Colors
syntax on
set t_Co=256
set background=dark
colorscheme minimalist

" Status bar
set wildmenu
set cmdheight=1
set ruler

set autoindent
set autoread

" Line numbers
set number

" Always show the sign column
set signcolumn=yes

" Always display one line before or after the cursor
set scrolloff=1

" Also 5 characters to the left and right of the cursor
set sidescrolloff=5

" Completion with ^C-P and ^C-N
set complete-=i

" Incremental search
set incsearch

" Hide buffers
set hidden

" Default indentation settings
set tabstop=4
set shiftwidth=4
set expandtab

" Disable auto-commenting on new lines (so annoying)
autocmd BufNewFile,BufRead,FileType,OptionSet * set formatoptions-=cro
autocmd BufNewFile,BufRead,FileType,OptionSet * setlocal formatoptions-=cro

" Extra settings
source ~/.vim/statusline.vim
source ~/.vim/plugins.vim
source ~/.vim/keybinds.vim
source ~/.vim/misc.vim
