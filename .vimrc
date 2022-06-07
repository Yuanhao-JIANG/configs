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
" show conceal
set conceallevel=2
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mySnips"]

autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

set cursorline
set cursorcolumn
set expandtab
set ts=4 sts=4 sw=4
set colorcolumn=120
set rnu
set ruler
syntax on


hi cursorline cterm=NONE ctermbg=237
hi cursorcolumn ctermbg=237
hi cursorlinenr cterm=NONE ctermbg=237
hi Conceal cterm=NONE ctermfg=lightyellow ctermbg=NONE
" to clear conceal highlighting use the command :hi clear Conceal
hi ColorColumn ctermbg=240
