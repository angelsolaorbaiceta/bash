# Bash functions
[ -f ~/.bash_functions ] && source ~/.bash_functions

# Modify CDPATH to allow cd to search these directories as well
export CDPATH=$HOME/Code

# Use bat (instead of less) as the pager for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"  # prevents some formatting artifacts

# Use fzf niceties
eval "$(fzf --bash)"

# Use vim command line edit mode (see readline(3) - DEFAULT KEY BINDINGS)
set -o vi
