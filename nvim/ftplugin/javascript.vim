highlight ColorColumn ctermbg=gray
set colorcolumn=88
set shiftwidth=2
source $HOME/.config/nvim/closetag.vim
inoremap ><CR> ><C-R>=GetCloseTag()<CR><ESC>bba<CR><ESC>ko<TAB>
