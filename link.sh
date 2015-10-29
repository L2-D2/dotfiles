#RUN THIS SCRIPT INSIDE dotfiles/

#Gonna start with hard coding each file.
#TODO: 	Have it detect files then link them.
#	Have it not try to link files that already exist in target location.
ln -s $PWD/bashrc $HOME/.bashrc
ln -s $PWD/bash_profile $HOME/.bash_profile
ln -s $PWD/xinitrc $HOME/.xinitrc
ln -s $PWD/i3/config $HOME/.config/i3/config
ln -s $PWD/i3/i3status.conf $HOME/.config/i3/i3status.conf

#Vim
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vimcolors/buddy.vim $HOME/.vim/colors/buddy.vim
ln -s $PWD/vimcolors/vendetta.vim $HOME/.vim/colors/vendetta.vim
ln -s $PWD/vimcolors/VIvid.vim $HOME/.vim/colors/VIvid.vim
