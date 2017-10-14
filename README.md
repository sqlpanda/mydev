This is my own dev enviroment

# Initial Setup
	sudo apt-get update
	sudo apt-get install tmux
	sudo apt-get install git
	git clone https://github.com/sqlpanda/mydev.git
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Compile vim with python support
if vim does not have python support ( vim --version) recomplile vim for it.

	sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
	libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
	libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
	python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git cmake
  
	sudo apt-get remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox


	cd ~
	git clone https://github.com/vim/vim.git
         cd vim
         ./configure --with-features=huge \
                        --enable-multibyte \
                        --enable-rubyinterp=yes \
                        --enable-pythoninterp=yes \
                        --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
                        --enable-python3interp=yes \
                        --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
                        --enable-perlinterp=yes \
                        --enable-cscope \
                        --prefix=/usr/local
          make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
          sudo apt-get install checkinstall
          cd ~/vim
          sudo checkinstall
	  sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
	  sudo update-alternatives --set editor /usr/local/bin/vim
	  sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
	  sudo update-alternatives --set vi /usr/local/bin/vim
	  sudo mkdir  -p /usr/local/sha/syntax
	  sudo ln -s /usr/local/share/vim/vim80/syntax/syntax.vim /usr/local/sha/syntax/syntax.vim


# Install YouCompleteMe
	
	 cd ~/.vim/bundle/YouCompleteMe
	 ./install.py --clang-completer

# other
	sudo apt-get update
	sudo apt-get install tmux
	sudo apt-get install make
	sudo apt-get  install python3-pip  python3-venv


