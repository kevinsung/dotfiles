" Plugins
" To install vim-plug:
" sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
call plug#begin("~/.config/nvim/plugged")
  Plug 'MaxMEllon/vim-jsx-pretty'
  Plug 'junegunn/fzf'
  Plug 'leafgarland/typescript-vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-css', 'coc-emmet', 'coc-html', 'coc-json', 'coc-prettier', 'coc-python', 'coc-tsserver']
call plug#end()"Config Section

" FZF settings
nnoremap <C-f> :FZF<CR>
let g:fzf_action = {
            \'ctrl-t': 'tab split',
            \'ctrl-i': 'split',
            \'ctrl-s': 'vsplit'
            \}

" Toggle NERDTree with ctrl+n
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Turn on indent guides by default
let g:indent_guides_enable_on_vim_startup = 1

" coc.nvim
source $HOME/.config/nvim/coc.vim

" auto pairs
"autoclose and position cursor after
inoremap (<tab> ()
inoremap [<tab> []
inoremap {<tab> {}
"autoclose 2 lines below and position cursor in the middle
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap ({<CR> ({<CR>})<ESC>O
"bracket followed by parentheses
inoremap {)<CR> {<CR>})<ESC>O


" Open new split panes to right and below
set splitright
set splitbelow
" Turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" Start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" Open terminal on alt+enter
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <A-CR> :call OpenTerminal()<CR>

" Copy and paste with system clipboard
map <C-y> "+y
map <C-p> "+p

" Use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Line numbering
set number

" Yank to end of line
map Y y$

" Use mouse
set mouse=a

" Use H and L to navigate tabs
nnoremap H gT
nnoremap L gt

" Use Alt-. and Alt-. to move to prev/next lines with same indentation
nnoremap <A-,> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>
nnoremap <A-.> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>

" miscellaneous
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
inoremap <C-H> <C-w>
nnoremap <CR> o<ESC>k
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-h> 5h
nnoremap <C-l> 5l
vnoremap <C-j> 5j
vnoremap <C-k> 5k
vnoremap <C-h> 5h
vnoremap <C-l> 5l
