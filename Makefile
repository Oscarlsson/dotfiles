all: ycm term git xmonad 
box: ycm term git ~/.tmux.conf
ycm: vim ~/.vim/bundle/YouCompleteMe
vim: ~/.vimrc ~/.vim/bundle/vundle ~/.vim/bundle/install
term: ~/.zshrc ~/.bashrc ~/.aliases  ~/.xsession ~/.oh-my-zsh ~/.dircolors ssh ~/.theme.bash git
xmonad: ~/.xmonad 
xmodmap: ~/.Xmodmap
git: ~/.gitconfig
ssh: ~/.ssh/rc ~/.ssh/config

~/.oh-my-zsh:
	ln -s $(PWD)/oh-my-zsh $@

~/.xmonad:
	ln -s $(PWD)/xmonad $@

~/.gitconfig:
	ln -s $(PWD)/term/gitconfig $@

# TERM
~/.zshrc:
	ln -s $(PWD)/term/zshrc $@

~/.bashrc:
	ln -s $(PWD)/term/bashrc $@

~/.tmux.conf:
	ln -s $(PWD)/term/tmux.conf $@

~/.aliases:
	ln -s $(PWD)/term/aliases $@

~/.dircolors:
	ln -s $(PWD)/term/dircolors $@

~/.Xmodmap:
	ln -s $(PWD)/term/Xmodmap	$@

~/.theme.bash:
	ln -s $(PWD)/term/theme.bash $@

# XMONAD
~/.xsession:
	ln -s $(PWD)/term/xsession $@

# VIM
~/.vimrc: 
	ln -s $(PWD)/vim/vimrc $@

~/.vim/bundle/vundle:
	git clone git://github.com/gmarik/vundle $@

~/.vim/bundle/install:
	vim +PluginInstall +qall
	mkdir -p ~/.vim/colors
	ln -s ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors
	touch $@

~/.vim/bundle/YouCompleteMe: ~/.vim/bundle/install
	cd ~/.vim/bundle/YouCompleteMe && ./install.sh

# ssh
~/.ssh/rc: 
	ln -s $(PWD)/ssh/rc $@	

~/.ssh/config: 
	ln -s $(PWD)/ssh/config $@	
