call plug#begin()
	Plug 'flazz/vim-colorschemes'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ghifarit53/tokyonight-vim'
	Plug 'sstallion/vim-cursorline'
	Plug 'anotherproksy/ez-window'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'bfrg/vim-cpp-modern'
	Plug 'vim-scripts/c.vim'
	" Plug 'cdelledonne/vim-cmake'
	Plug 'ilyachur/cmake4vim'
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'neoclide/coc.nvim'
	Plug 'vim-airline/vim-airline'
	Plug 'ryanoasis/vim-devicons'
	Plug 'https://github.com/preservim/tagbar'
	Plug 'https://github.com/terryma/vim-multiple-cursors'
call plug#end()

nmap <c-s> :w<CR>
nmap <c-q> :q!<CR>
imap <c-s> <Esc>:w<CR>a

inoremap <C-w> <ESC>
nnoremap a i

map h <Right>
map i <Up>
map j <Left>
map k <Down>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:airline_theme = "tokyonight"
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:airline_powerline_fonts = 1

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-o>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-o>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-o>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

nnoremap <C-c> :CMake <CR>
nnoremap <C-b> :CMakeBuild <CR>
nnoremap <C-r> :CMakeRun <CR>

set termguicolors
colorscheme tokyonight
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 0
let g:tokyonight_disable_italic_comment = 1
let g:lightline = {'colorscheme' : 'tokyonight'}

syntax on
set number
set mouse=a
"nnoremap <LeftMouse> m'<LeftMouse>
"nnoremap <LeftRelease> <LeftRelease>g``
filetype plugin indent on
set ts=4 sts=4 sw=4
