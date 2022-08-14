call plug#begin()

Plug 'preservim/nerdtree'
Plug 'lervag/vimtex'
" Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/AutoComplPop'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

set complete+=kspell

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
autocmd FileType tex setlocal conceallevel=2

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
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2
set statusline=
set statusline+=%#DiffChange#
set statusline+=%{StatuslineGit()}
set statusline+=%#ColorColumn#
set statusline+=\ %F
set statusline+=%m\ 
set statusline+=%=
set statusline+=%#SpellLocal#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
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


hi cursorline cterm=NONE ctermbg=237
hi cursorcolumn ctermbg=237
hi cursorlinenr cterm=NONE ctermbg=237
hi Conceal cterm=NONE ctermfg=lightyellow ctermbg=NONE
" to clear conceal highlighting use the command :hi clear Conceal
hi ColorColumn ctermbg=240
