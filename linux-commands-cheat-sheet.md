# Linux Commands Cheat Sheet

## Terminals

### Open
- `ctrl+alt+t`: open a new terminal window
- `ctrl+shift+t`: open a terminal tab in the current terminal window

### Close
- `exit`: close the current terminal tab
- `ctrl+shift+w`: close the current terminal tab
- `ctrl+shift+q`: close all terminal tabs and thus the current terminal window

> Refer to [Is there a command to close a terminal window via commandline? (from askubuntu)](http://askubuntu.com/a/19399/306000).

## File and Directory

### `ls`

#### Options
- `-a`
- `-l`
- `-s` = `--summary`: display only a total for each argument
- `-t` = `--sort=time`
- `-X` = `--sort=extension`
- `-S` = `--sort=size`
- `-r` = `--reverse`
- `-h` = `--human-readable`: print sizes in human readable format (e.g., 1K 234M 2G).

#### Case Study

- `ls -laSh`
- [How do I get the size of a directory on the command line?](http://unix.stackexchange.com/q/185764)
  - `du -sh * (or <file>)`: give the size of all the directories, files etc in current directory in human readable format.
  
    > `du`: disk usage; `df`: disk free space

### `cd`

- `cd ../../../`: Go three directories up
- `cd -`: Go to previous `pwd`

### Create

### Move (Rename), Copy, and Remove

- `cp -R srcDir destDir` copy srcDir to destDir recursively (`-R`)
