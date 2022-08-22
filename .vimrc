call plug#begin()

Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'
" Plug 'vim-scripts/AutoComplPop'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

set complete+=kspell

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
autocmd FileType tex setlocal conceallevel=2

let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mySnips"]

set vop-=options vop-=localoptions
autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" set status line
set laststatus=2
set statusline=
set statusline+=%#StatusLineFile#
set statusline+=\ %F
set statusline+=%m
set statusline+=%=
set statusline+=%#StatusLineTail#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

set cursorline
set cursorcolumn
set expandtab
set ts=4 sts=4 sw=4
set colorcolumn=80,120
set rnu
set ruler
syntax on

hi CursorLine cterm=NONE ctermbg=237
hi CursorColumn ctermbg=237
hi CursorLineNr cterm=NONE ctermbg=237
hi Conceal cterm=NONE ctermfg=lightyellow ctermbg=NONE
hi ColorColumn ctermbg=240
hi StatusLineFile ctermbg=24
hi StatusLineTail ctermbg=30

