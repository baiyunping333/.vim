
" Start pathgen plugin 
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocp
filetype plugin on
filetype on



"Syntax Highlighting is a must
syntax on

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4

set path+=/home/tito/Projects/libssh2/src/
set path+=/home/tito/Projects/libssh2/example
set path+=/home/tito/Projects/libssh2/include

set tags+=/home/tito/Projects/libssh2/src/
set tags+=/home/tito/Projects/libssh2/example
set tags+=/home/tito/Projects/libssh2/include

se spell
setlocal spell spelllang+=en_us
"setlocal spell spelllang+=ru_ru
"setlocal spell spelllang+=bg
"setlocal spell spelllang+=de






" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

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
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
   

