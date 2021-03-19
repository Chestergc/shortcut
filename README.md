# shortcut
This is a fork from https://github.com/zakkor/shortcut to make it work on the mobile terminal Termux, it's the same program, with the fixed installer, just in case someone ends up needing it. If you're using bash you should change that in the installer, I use zsh.

## Installation

`sh install.sh` will put an executable `shortcut` in `/data/data/com.termux/files/usr/bin/shortcut`, and append a shell function called `sc` to your rc file.

## Example usage

Say you're in `~/some/long/path/work`:

  `sc work .`  to declare a shortcut called work that leads to the current dir

  `sc work`  to cd to that shortcut.

(Of course, when you declare a shortcut you can also use an absolute path if you want, like `sc go /home/me/go/src/github.com/me`)

The shortcuts are persistent, and are stored in `~/.scrc`

## Fuzzy finding shortcuts 

You can integrate fuzzy finding with your shortcuts via the ~/.scrc file. 

Use this example to integrate with [fzf](https://github.com/junegunn/fzf)

`alias scf='sc $(cut -d " " -f 1  ~/.scrc | fzf)'`
