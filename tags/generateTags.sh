#! /bin/bash
# First make sure apt-file is install and then do:

sudo apt-file update

# set up tags for libc, the standard C library

apt-file list libc6-dev | grep -o '/usr/include/.*\.h'> ~/.vim/tags/libc6-filelist
ctags --sort=foldcase --c++-kinds=+p --fields=+iaS --extra=+q -I./libc6-ignore -f ~/.vim/tags/libc6 -L ~/.vim/tags/libc6-filelist 

apt-file list libstdc++6-4.6-dev | grep -E -o '/usr/include/.*\.(h|hpp)' >> ~/.vim/tags/stdlibcpp-filelist
ctags --sort=foldcase -R --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/stdlibcpp -L ~/.vim/tags/stdlibcpp-filelist

# For Boost
apt-file list boost | grep -E -o '/usr/include/.*\.(h|hpp)' | grep -v '/usr/include/boost/typeof/' > ~/.vim/tags/boost-filelist
ctags --sort=foldcase --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/boost -L ~/.vim/tags/boost-filelist 

