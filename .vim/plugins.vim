" If vim-plug isn't downloaded and loaded, get it!
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start vim-plug and load plugins
call plug#begin('~/.vim/plugged')

" ----- Plugins -----

" Comment stuff out with gcc and gc
Plug 'tpope/vim-commentary'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Better folder browsing
Plug 'scrooloose/nerdtree'

" Syntax checker and linter thing
Plug 'vim-syntastic/syntastic'

" Trailing whitespace detect
Plug 'ntpeters/vim-better-whitespace'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Language pack
Plug 'sheerun/vim-polyglot'

" Align stuff
Plug 'junegunn/vim-easy-align'

" Extended visual search and replace
Plug 'vim-scripts/vis'

call plug#end()

" ----- Plugin settings -----

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Syntastic settings
let g:syntastic_python_checkers=['flake8']


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
