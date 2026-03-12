# bash

Add this in `.bashrc`:

```bash
[ -f ~/.bash_functions ] && source ~/.bash_functions
```

Create the `~/.bash_functions` if it doesn't exist:

```bash
[ -f ~/.bash_functions ] || touch ~/.bash_functions 
```

Then copy the functions you are interested in into that file.
