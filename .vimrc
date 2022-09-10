set nocompatible              " be iMproved, required
filetype off                  " required
syntax on " set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'lifepillar/vim-solarized8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='base16_monokai'
Plugin 'raimondi/delimitmate'
Plugin 'romainl/vim-cool'
let g:CoolTotalMatches = 1
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

autocmd vimenter * ++nested colorscheme dracula
let g:solarized_termtrans = 0
let g:dracula_colorterm = 0

Plugin 'rust-lang/rust.vim'
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

call vundle#end()            " required
filetype plugin indent on    " required

set wrap linebreak nolist
set textwidth=80
set tabpagemax=50               " 50 tabs (:tabe, vim -p, ..) max
set tabstop=4                   " A tab character is displayed as 4 spaces max
set termguicolors               " enable use of 24-bit colors in terminals
set synmaxcol=200               " stop syntax highlighting past this column
set shiftwidth=4                " An indent is 4 spaces
set showcmd                     " Show command being typed
set showmatch                   " Show matching bracket
set noswapfile                  " No *.swp files
set number relativenumber       " Show line numbers
set numberwidth=3               " Number column width
set matchtime=3                 " Time to show matching bracket
set mouse=a                     " enable mouse
set nobackup                    " Don't backup before overwrite
set hidden
set hls
set ignorecase                  " Ignore case when searching
set incsearch                   " Incremental search: search-as-type
set laststatus=2                " Always show status bar
set lazyredraw                  " Don't redraw while executing macros
set linebreak                   " Wrap lines at convenient points instead of last screen character
set list listchars=tab:\|─,trail:·,nbsp:↔ " Display nonprintable characters
set gdefault                    " g flag by default in substitutions
set grepprg=rg\ --vimgrep\ -g\ \!tags
set grepformat=%f:%l:%c:%m
set history=1000                " :command history
set expandtab                   " use spaces instead of tabs everywhere
set fileformats="unix,dos,mac"  " Line ending priority
set fillchars=vert:│,fold:\ ,diff:─ " Pretty window separators
set foldlevelstart=9            " close folds after level 9 at start
set foldmethod=syntax
set cinoptions+=ls              " switch case labels indentation
set complete+=kspell
set completeopt=menuone,longest
set cinoptions+=:0              " also switch case labels indentation
set cinoptions+=N-s             " don't indent in namespaces
set colorcolumn=100
set completeopt-=preview        " Don't show autocompletition window on top
set encoding=utf-8              " Default encoding
set autoindent
set autoread
set autowrite                   " Auto write on :make, :shell and others
set backspace=2                 " Allow backspacing everywhere
set breakindent                 " for wrapping, continue at indent instead of start of line
set cindent                     " C-style autoindenting
set belloff=all

if (&t_Co > 8 || has("gui_running")) && !exists("syntax_on")
	syntax on
endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
colorscheme dracula

nnoremap <leader>n :NERDTreeFocus<CR>
nmap <f1>       :FortyTwoHeader<CR>
let g:user42 = 'eestelle'

hi Folded guifg=#586e75 guibg=#002b36 guisp=#002b36
" for listchars
" L*A*B 26 -7 -7
hi SpecialKey guifg=#2C4148 guibg=NONE guisp=NONE gui=NONE cterm=NONE

hi! link SignColumn LineNr

" call matchadd('ColorColumn', '\%101v', 100)

" commands =====================================================================
command! W w !sudo tee % > /dev/null

command! Dos2Unix %s///

command! StripTrailingWhitespace %s/\s\+$//

command! ChmodX !chmod 755 %

set cursorline " highlight line with cursor
augroup CursorLine
	au!
	au WinEnter * setlocal cursorline
	au TabEnter * setlocal cursorline
	au BufEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
	au TabLeave * setlocal nocursorline
	au BufLeave * setlocal nocursorline
augroup END

"nnoremap <Tab> <Esc>
"vnoremap <Tab> <Esc>gV
"onoremap <Tab> <Esc>
"inoremap <Tab> <Esc>`^
"inoremap <S-Tab> <Tab>

let g:python3_host_prog = '/usr/bin/python3'

let g:mapleader = ","

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_count = 2
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#checks = [ 'trailing' ]
let g:airline#extensions#scrollbar#enabled = 0
let g:airline_left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_right_sep = ''
" let g:airline_theme = 'solarized'
let g:airline_section_z = '%l/%L:%v'
let g:airline_section_y = '%{LastSearchCount()}'
let g:airline_section_b = ''

let g:airline#extensions#searchcount#enabled = 0
function! LastSearchCount() abort
  try
    let result = searchcount(#{recompute: 1, maxcount: -1})
    if empty(result) || result.total ==# 0
      return ''
    endif
    if result.incomplete ==# 1     " timed out
      return printf('%s [?/??]', @/)
    elseif result.incomplete ==# 2 " max count exceeded
      if result.total > result.maxcount && result.current > result.maxcount
        return printf('%s [>%d/>%d]', @/, result.current, result.total)
      elseif result.total > result.maxcount
        return printf('%s [%d/>%d]', @/, result.current, result.total)
      endif
    endif
    return printf('%s [%d/%d]', @/, result.current, result.total)
  catch
    return ''
  endtry
endfunction
