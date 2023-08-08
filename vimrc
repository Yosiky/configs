filetype plugin indent on " Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 " Ставит кодировку UTF-8
set nocompatible " Отключает обратную совместимость с Vi
syntax enable " Включает подсветку синтаксиса
set number " Нумерация строк
set termguicolors

" Настройка отступов
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Отключеие бинг-бонг в виме
set noerrorbells
set novisualbell

" Курсор
set cursorline
set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
"Где 1 - это мигающий прямоугольник
"2 - обычный прямоугольник
"3 - мигающее подчёркивание
"4 - просто подчёркивание
"5 - мигающая вертикальная черта
"6 - просто вертикальная черта
set backspace=indent,eol,start

" Мышь
set mouse=a

" Поиск
set ignorecase              " ignoring case in search
set smartcase               " smart case in search
set hlsearch                " highlight in search
set incsearch               " show first accurance while searching

call plug#begin('~/.vim/bundle')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joom/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ayu-theme/ayu-vim'
" Plug 'ycm-core/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ntk148v/vim-horizon'
Plug '42Paris/42header'
Plug 'yggdroot/indentline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'inkarkat/vim-mark'
" Plug 'vim-scripts/Mark'

call plug#end()

" plugin airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="ayu_dark"

" themes
set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" youcompleteme
" let g:ycm_auto_trigger=1
" set completeopt-=preview
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_add_preview_to_completeopt = 0

" let g:ycm_complete_in_comments = 1
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" let g:ycm_min_num_of_chars_for_completion=1

" nnoremap <F4> :YcmDiags<CR>
" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" nnoremap <C-g> :YcmCompleter GoTo<CR>
" nnoremap <C-t> :YcmCompleter GetType<CR>
" nnoremap <Leader> :YcmCompleter GetDoc<CR>
" let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

" nordtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>

autocmd BufWritePre * :%s/\s\+$//e

" horizon line
set termguicolors

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}

:set colorcolumn=100

" ecole 42 header
let g:user42 = 'eestelle'
let g:mail42 = 'yosiky@list.ru'


" indentLine
set list lcs=tab:<->

let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileType = ['c', 'cpp']
let g:indentLine_enabled = 1

" let g:indentLine_setConceal = 1
" let g:indentLine_concealcursor = "incv"
" let g:indentLine_conceallevel = 2

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '-'

" fzf
map <Leader>f :Files<CR>
map <Leader>b :Buffers<CR>
map <Leader>l :Lines<CR>
map <Leader>m :Marks<CR>
map <Leader>r :Tags<CR>
map <Leader>w :Windows<CR>
map <Leader>a :Ag<CR>

