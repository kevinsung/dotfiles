highlight ColorColumn ctermbg=gray
filetype indent off
set smartindent
set shiftwidth=2
source $HOME/.config/nvim/closetag.vim
inoremap ><CR> ><C-R>=GetCloseTag()<CR><ESC>bhhi<CR><ESC>ko<TAB>
