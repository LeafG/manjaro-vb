
#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

DEFAULT_SESSION=openbox-session
case $1 in
  openbox) exec  ck-launch-session dbus-launch openbox-session ;;
  *) exec ck-launch-session dbus-launch  $DEFAULT_SESSION ;;
esac
