call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Basic nvim settings
set relativenumber

set wrap

set mouse=a

syntax on

set tabstop=4
set softtabstop=0
set noexpandtab
set shiftwidth=4
set smarttab

" NerdTree settings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" LightLine settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }


set t_CO=256

" Theme settings
set background=dark
colorscheme nord
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
