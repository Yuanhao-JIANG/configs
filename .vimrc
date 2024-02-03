call plug#begin()

Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'jalvesaq/Nvim-R'

call plug#end()

set autoread

let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
autocmd FileType tex setlocal conceallevel=2

let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mySnips"]

set vop-=options vop-=localoptions
autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

autocmd vimenter * ++nested colorscheme gruvbox

" set status line
set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme='luna'
let g:airline#extensions#default#section_truncate_width = {
            \ 'b': 79,
            \ 'x': 60,
            \ 'y': 50,
            \ 'z': 45,
            \ 'warning': 12,
            \ 'error': 80,
            \ }

"hi CursorLine cterm=NONE ctermbg=237
"hi CursorColumn ctermbg=237
"hi CursorLineNr cterm=NONE ctermbg=237
"hi Conceal cterm=NONE ctermfg=lightyellow ctermbg=NONE
"hi ColorColumn ctermbg=240
"hi StatusLineFile ctermbg=24
"hi StatusLineTail ctermbg=30

set wrap linebreak nolist
set textwidth=80
set cursorline
"set cursorcolumn
set colorcolumn=80,120
set complete+=kspell
set expandtab
set ts=4 sts=4 sw=4
set rnu
set ruler
syntax on
