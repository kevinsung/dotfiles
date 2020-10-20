highlight ColorColumn ctermbg=gray
set colorcolumn=88
set shiftwidth=2
source $HOME/.config/nvim/closetag.vim
inoremap ><CR> ><C-R>=GetCloseTag()<CR><ESC>bba<CR><ESC>ko<TAB>
filetype indent off

" auto pairs
"autoclose 2 lines below and position cursor in the middle
inoremap (<CR> (<CR>)<ESC>O<TAB>
inoremap [<CR> [<CR>]<ESC>O<TAB>
inoremap {<CR> {<CR>}<ESC>O<TAB>
inoremap ({<CR> ({<CR>})<ESC>O<TAB>
