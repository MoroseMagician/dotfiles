set laststatus=2
set noshowmode

hi StatusColor      ctermbg=236 ctermfg=255 cterm=BOLD
hi StatusProgress   ctermbg=236 ctermfg=140 cterm=BOLD
hi StatusLineNumber ctermbg=236 ctermfg=215 cterm=BOLD
hi StatusWarn       ctermbg=236 ctermfg=126 cterm=BOLD
hi StatusFileType   ctermbg=233 ctermfg=244 cterm=NONE

let g:mode_map = {
	\ 'n'  : 'NORMAL',
	\ 'no' : 'N-OP',
	\ 'v'  : 'VISUAL',
	\ 'V'  : 'VISUAL LINE',
	\ '' : 'VISUAL BLOCK',
	\ 's'  : 'SELECT',
	\ 'S'  : 'SELECT LINE',
	\ '' : 'SELECT BLOCK',
	\ 'i'  : 'INSERT',
	\ 'R'  : 'REPLACE',
	\ 'Rv' : 'VISUAL REPLACE',
	\ 'c'  : 'COMMAND',
	\ 'cv' : 'VIM EX',
	\ 'ce' : 'EX',
	\ 'r'  : 'PROMPT',
	\ 'rm' : 'MORE',
	\ 'r?' : 'CONFIRM',
	\ '!'  : 'SHELL',
	\}

function! SetStatusColor()
    let mode = g:mode_map[mode()]

    if mode =~? 'normal'
        execute 'hi StatusColor ctermbg=236 ctermfg=215 cterm=BOLD'
    elseif mode =~? 'visual'
        execute 'hi StatusColor ctermbg=236 ctermfg=140 cterm=BOLD'
    elseif mode =~? 'insert'
        execute 'hi StatusColor ctermbg=236 ctermfg=117 cterm=BOLD'
    elseif mode =~? 'replace'
        execute 'hi StatusColor ctermbg=236 ctermfg=167 cterm=BOLD'
    else
        execute 'hi StatusColor ctermbg=236 ctermfg=255 cterm=BOLD'
    endif
    return ''
endfunction

set statusline=
set statusline+=%{SetStatusColor()}
set statusline+=%#StatusColor#
set statusline+=\ %{g:mode_map[mode()]}\ "
set statusline+=%*
set statusline+=%#StatusWarn#
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorLine#
set statusline+=\ %t\ %m
set statusline+=%r
set statusline+=%=
set statusline+=%#StatusFileType#
set statusline+=\ %y\ "
set statusline+=%#StatusLineNumber#
set statusline+=\ %l\ ≡\ "
set statusline+=%*
set statusline+=%#StatusProgress#
set statusline+=\ %3p%%\ "
