if [-f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
exec gnome-session --session xmonad-gnome "$@"
xlux.sh&
