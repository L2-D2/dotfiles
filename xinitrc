################################## Startup
gnome-screensaver &
rfkill unblock wifi &
wallchanger &
#feh ~/images/walls/fQkJ3k2.jpg
eval $(ssh-agent) &
#sxhkd &

################################## Pantheon
#gsettings-data-convert &
#xdg-user-dirs-gtk-update &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/gnome-settings-daemon/gnome-settings-daemon &
#/usr/lib/gnome-user-share/gnome-user-share &
#eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
#exec cerbere

################################## WM
#exec gnome-session
exec i3
#exec bspwm
#exec weston
