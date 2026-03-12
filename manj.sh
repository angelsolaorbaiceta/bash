# Lists the sections of a manpage, uses fzf to select one, and navigates to it
manj() {
  local page="${1:?usage: manj <manpage>}"
  local plain
  plain=$(man "$page" | col -b)

  local lineno
  lineno=$(echo "$plain" \
    | grep -n "^[A-Z][A-Z ]" \
    | fzf --height=40% --reverse --prompt="Section > " \
    | cut -d: -f1)

  [ -n "$lineno" ] && echo "$plain" | less +"$lineno"
}
