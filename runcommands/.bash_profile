for DOTFILE in `find $HOME/Desktop/dotfiles/system`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
