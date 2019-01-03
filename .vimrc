set autoindent

" Bunch of status bar stuff
set wildmenu
set cmdheight=2
set number
set ruler

" Always display one line before or after the cursor
set scrolloff=1

" Also 5 characters to the left and right of the cursor
set sidescrolloff=5

" Completion with ^C-P and ^C-N
set complete-=i

" Incremental search
set incsearch

" Color scheme
set t_Co=256
colorscheme termschool

" Statusbar
set laststatus=2

" Default indentation settings (probably overridden by DetectIndent)
set tabstop=4
set shiftwidth=4
set noexpandtab

" Nicer tab navigation
nnoremap H gT
nnoremap L gt

" No arrow keys
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

" Boilerplate templates for new code files
au BufNewFile * silent! 0r ~/templates/template.%:e

" Change the titlebar to what I'm editing
let &titlestring = expand("%:t")
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

" CaraWeb filewatcher fix
set backupcopy=yes

" ------------------------------ begin vim-plug ------------------------------

" If vim-plug isn't downloaded and loaded, get it!
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" NOTE: use :PlugInstall to install the plugins

" Start vim-plug and load plugins
call plug#begin('~/.vim/plugged')

" Comment stuff out with gcc and gc
Plug 'tpope/vim-commentary'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
"
" Snippets and dependencies
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Better folder browsing
Plug 'scrooloose/nerdtree'

" Syntax checker and linter thing
Plug 'vim-syntastic/syntastic'

" Trailing whitespace detect
Plug 'ntpeters/vim-better-whitespace'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" ------------------------------  end vim-plug  ------------------------------

" Author comments in snippets
let g:snips_author = 'Change Me'
let g:snips_email = 'Change Me'

" Disable auto-commenting on new lines (so annoying)
autocmd BufNewFile,BufRead,FileType,OptionSet * set formatoptions-=cro
autocmd BufNewFile,BufRead,FileType,OptionSet * setlocal formatoptions-=cro

