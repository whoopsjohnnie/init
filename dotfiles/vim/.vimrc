
"" mars  8 12:42:42 2022 - Initial version of my vim config, make sure backspace works in macOS
"" 19 juni 2022 08:38 - Testing editor splits and project drawer stuff
"" sep. 23 12:59:24 2022 - Disabling visual mode on mouse select for vim

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

