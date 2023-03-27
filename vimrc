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

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joom/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ntk148v/vim-horizon'

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
