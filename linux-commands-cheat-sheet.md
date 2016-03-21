# Linux Commands Cheat Sheet

## Terminals

### Open
- `Ctrl + Alt + T`: open a new terminal window
- `Ctrl + Shift + T`: open a terminal tab in the current terminal window

### [Close](http://askubuntu.com/a/19399/306000)
- `exit`: close the current terminal tab
- `Ctrl + Shift + W`: close the current terminal tab
- `Ctrl + Shift + Q`: close all terminal tabs and thus the current terminal window

### Tab Switch
- `Ctrl + PgUp`: previous tab
- `Ctrl + PgDn`: next tab
- `Ctrl + Shift + PgUp`: move forward
- `Ctrl + Shift + PgDn`: move backward

### Edit
- `Ctrl + Shift + C`: copy
- `Ctrl + Shift + V`: paste

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

## Windows

- `Win + RightArrow`: move and re-size working window to the *right* half the screen
- `Win + LeftArrow`: move and re-size working window to the *left* half the screen
