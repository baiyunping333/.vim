" Start pathgen plugin 
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocp
filetype plugin on
filetype on


" ################# Search as you type ####################################

set incsearch

" ################# Intending The Code #####################################

set noexpandtab                         " use tabs, not spaces
set tabstop=8                           " tabstops of 8
set shiftwidth=8                        " indents of 8
set textwidth=78                        " screen in 80 columns wide, wrap at 78

set autoindent smartindent              " turn on auto/smart indenting
set smarttab                            " make <tab> and <backspace> smarter
set backspace=eol,start,indent          " allow backspacing over indent, eol, & start

"Vim has a feature which makes it indent code differently based on file type; here is how you would enable it:
filetype plugin indent on

" forces (re)indentation of a block of code
nmap <C-J> vip=                        


"Syntax Highlighting is a must
syntax on

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/boost
set tags+=~/.vim/tags/libc6
set tags+=~/.vim/tags/stdlibcpp

set tags+=~/Projects/syncbird

" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4

set path+=/home/tito/Projects/libssh2/src/
set path+=/home/tito/Projects/libssh2/example
set path+=/home/tito/Projects/libssh2/include

set tags+=/home/tito/Projects/libssh2/src/
set tags+=/home/tito/Projects/libssh2/example
set tags+=/home/tito/Projects/libssh2/include


set spell
setlocal spell spelllang+=en_us
"setlocal spell spelllang+=ru_ru
"setlocal spell spelllang+=bg
"setlocal spell spelllang+=de


" Complete options (disable preview scratch window)
"set completeopt = menu,menuone,longest
" Limit popup menu height
"set pumheight = 15
 
 " SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"
 
 " Disable auto popup, use <Tab> to autocomplete
" let g:clang_complete_auto = 0
 " Show clang errors in the quickfix window
let g:clang_complete_copen = 1

set ofu=syntaxcomplete#Complete

"Taglist options
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50



" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F10> :execute 'NERDTreeToggle' . getcwd()<CR>
map <F4> does not work for some reason <CR>
"map <F5>  <CR>
"map <F6>  <CR>
map <F7> :TlistToggle <CR>
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>





" OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" set completeopt=menuone,menu,longest,preview
   

