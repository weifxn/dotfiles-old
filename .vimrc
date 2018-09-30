syntax enable

"Set
set termguicolors
set mouse=a
set number
set tabstop=2
set shiftwidth=2
set wrap
set textwidth=80
set breakindent		"smart wrap
set undofile		"persistent undo
set undodir=$HOME/.vim/undo "undo file storage
set noshowmode "hide line under airline

"sytastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"Plugins
call plug#begin('~/.vim/plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'		"autoclose bracket
Plug 'airblade/vim-gitgutter'		"git add/remove line
Plug 'vim-syntastic/syntastic'		"syntax checking for vim
Plug 'haya14busa/incsearch.vim'		"incremental search
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"Mappings
map ; :
map <C-n> :NERDTreeToggle<CR>
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif		"close vim if windows left open is NERDTree

"jump to last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Let
let NERDTreeMinimalUI=1
"synyastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:airline_theme='ayu_mirage'
let ayucolor="mirage"
colo ayu
au VimEnter *.* hi Search guifg=white guibg=none
au VimEnter *.* hi IncSearch ctermfg=white ctermbg=none cterm=none gui=none




