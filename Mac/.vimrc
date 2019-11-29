" __ 	   __(.)  __	_     ____    __
" \ \     / /| | |  _ -	_ \  |  __| / __|     
"   \ \_/ /  | | | | | | | | | |   | |__	
"     \_/    |_| |_| |_| |_| |_|    \ __|	 
"----------------------------------------

"load package manager if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'w0rp/ale'
Plug 'gilgigilgil/anderson.vim'
Plug 'rust-lang/rust.vim'
call plug#end()

"Key bindings
map <C-x> :NERDTreeToggle<CR>

"Fun stuff
set number
syntax on
colorscheme anderson

"Python indenting
au BufNewFile,BufRead *.py
    \  set tabstop=4 |
    \  set softtabstop=4 |
    \  set shiftwidth=4 |
    \  set textwidth=79 |
    \  set expandtab |
    \  set autoindent |
    \  set fileformat=unix |

"Front-end Development
au BufNewFile,BufRead *.js,*.html,*.css
    \  set tabstop=2 |
    \  set softtabstop=2 |
    \  set shiftwidth=2 |

"'''''Vim statusbar'''''"

"Clearing complications
set noruler

"Indents
"set tabstop=4
"set shiftwidth=4
"set expandtab
"set guifont="Envy Code R\18"
"Security
set secure
"Setting up the line
set laststatus=2
set statusline=

"Statusline config
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#Visual#       	  " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     	  " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#                 " colour
set statusline+=%#CursorLine#     	  " colour
set statusline+=\ %t\                     " short file name
set statusline+=%=                        " right align
set statusline+=%#CursorLine#   	  " colour
set statusline+=\ %Y\                     " file type
set statusline+=%#CursorIM#     	  " colour
set statusline+=\ %3l:%-2c\         	  " line + column
set statusline+=%#Cursor#       	  " colour
set statusline+=\ %3p%%\                  " percentage
