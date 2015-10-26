#RUN THIS SCRIPT INSIDE dotfiles/

#Gonna start with hard coding each file.
#TODO: Have it detect files then link them.
ln -s ./vimrc $HOME/.vimrc
ln -s ./bashrc $HOME/.bashrc
ln -s ./bash_profile $HOME/.bash_profile
ln -s ./xinitrc $HOME/.xinitrc
ln -s ./i3/config $HOME/.config/i3/config
ln -s ./i3/i3status.conf $HOME/.config/i3/i3status.conf
