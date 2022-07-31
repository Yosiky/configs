"Включает определение типа файла, загрузку соответствующих ему плагинов и файлов отступов
filetype plugin indent on

"Ставит кодировку UTF-8
set encoding=utf-8

"Отключает обратную совместимость с Vi
set nocompatible

"Включает подсветку синтаксиса
syntax enable 

"умный таб
set smarttab
set	smartindent
set tabstop=4

set softtabstop=4

set shiftwidth=4

set	expandtab

set mouse=a

set ignorecase
set clipboard=unnamed

set guioptions= "Отключаем панели прокрутки в GUI
set showtabline=0 "Отключаем панель табов (окошки FTW)
"Сам по себе number показывает справа номера строк
"relativenumber - нумерацию строк относительно положения курсора
set number relativenumber "А это гибридный вариант. Протестируйте все

"wrap заставляет переносить строчки без их разделения
"Соответсвенно nowrap рендерит строчки за границами экрана
set wrap linebreak nolist "Данная вариация работает как wrap...
"... но переносит строчки не посимвольно, а по словам

"Предыдущий способ известен как soft wrapping
"При желании вы можете заставить Вим насильно разделять...
"... строчки в самом тексте вот так:
set textwidth=80 "Где 80 стоит заменить на нужную вам длину строкoи

set cursorline "А так мы можем подсвечивать строку с курсором

"Если вы используете обычный терминальный Вим, а не NeoVim, то...
"... для изменения курсора в разных режимах используйте это:
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

"let g:slime_target = "vimterminal

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
	"Если vim-plug не стоит
	"Создать директорию
	"И скачать его оттуда
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle') "Начать искать плагины в этой директории
"Тут будут описаны наши плагины

Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
"Plug 'jpalardy/vim-slime'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
call plug#end() "Перестать это делать
"for syntastic
" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers=['golint']

"Выбираем тему
"colorscheme sublimemonokai

"Для airline
"let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
"let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
"let g:airline_section_z = \ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
"let g:Powerline_symbols='unicode' "Поддержка unicode
"let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу

"set	guifont=devicons:h16

if has("mac")
    "Mac
	"set	guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete.otf:16
elseif has("win32")
    "all Windows, ie win32,win64
elseif has("win32unix")
    "Cygwin
elseif has("bsd")
    "BSD-based, ie freeBSD"
elseif has("linux")
    "Linux
	"set guifont=Caskaydia\ Cove\ Bold\ Nerd\ Font\ Complete\ Mono\ 16
end

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

