
#In order to update all submodules after the repository been copied do the following:
git submodule init
git submodule update



#Upgrading all budles together
git submodule foreach git pull origin master


#If i do want to add new plugins as a submodule use
it submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."


