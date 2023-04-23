
"" mars  8 12:42:42 2022 - Initial version of my vim config, make sure backspace works in macOS
"" 19 juni 2022 08:38 - Testing editor splits and project drawer stuff
"" sep. 23 12:59:24 2022 - Disabling visual mode on mouse select for vim
"" okt.  2 10:22:24 2022 - Enabling relative line numbers
"" 14 Apr 18:48:57 2023 - Setting splitbelow to have terminals open on bottom
"" 19 Apr 10:18 2023 - Load defaults.vim and mswin.vim

"" Sane defaults
source $VIMRUNTIME/defaults.vim

"" CUA Mode, I cannot live without it
source $VIMRUNTIME/mswin.vim
set keymodel-=stopsel

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

set backspace=indent,eol,start
set mouse-=a

set number
set relativenumber

set splitbelow

