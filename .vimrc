call plug#begin()

Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/AutoComplPop'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

set complete+=kspell

let g:tex_flavor='latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmg'
" hi clear Conceal

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set cursorline
set cursorcolumn
hi cursorline cterm=NONE ctermbg=237
hi cursorcolumn ctermbg=237
hi cursorlinenr cterm=NONE ctermbg=237
set expandtab
set ts=4 sts=4 sw=4
set nu
set ruler
syntax on
