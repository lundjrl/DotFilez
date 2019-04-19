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
Plug 'gilgigilgil/anderson.vim'
"Plug 'vim-airline/vim-airline'
call plug#end()

"Key bindings
map <C-n> :NERDTreeToggle<CR>

"Fun stuff
set number
colorscheme anderson

"Vim statusbar
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

"Clearing complications
set noruler

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
