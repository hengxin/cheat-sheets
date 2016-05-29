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

### `ln`
- `ln -sv <target> <link-name>`: create a *symbolic* link to <target> with the name <link-name>
- `ln <target> <link-name>`: create a *hard* link
- `unlink <link-name>`

#### Case Study
- `ln -sv ~/dotfiles/vim/vimrc ~/.vimrc`
- `ln -sv ~/.dotfiles/vim/vim/ ~/.vim`

### Create

### Move (Rename), Copy, and Remove

- `mv srcDir destDir`: move srcDir to destDir recursively (no `-R`)
- `cp -R srcDir destDir`: copy srcDir to destDir recursively (`-R`)
- `cp -R srcDir destDir/`: ???
- `cp -R srcDir/ destDir/`: ???
- `cp -R srcDir/ destDir`: ???
- [Copying multiple specific files from one folder to another](http://askubuntu.com/a/327285/306000)

  - `cp /home/usr/dir/{file1,file2,file3,file4} /home/usr/destination/` *Note:* no space between files
  - `cp /home/usr/dir/file{1..4} ./`

### Tar
- [`tar -xvzf community_images.tar.gz`](http://askubuntu.com/a/25348/306000)
  - f: this must be the last flag of the command, and the tar file must be immediately after. It tells tar the name and path of the compressed file.
  - z: tells tar to decompress the archive using gzip
  - x: tar can collect files or extract them. x does the latter.
  - v: makes tar talk a lot. Verbose output shows you all the files being extracted.
- [`tar xf community_images.tar.gz`](http://askubuntu.com/a/398336/306000) suffices.
  
  At some point tar was upgraded to auto-decompress.


## Windows

- `Win + RightArrow`: move and re-size working window to the *right* half the screen
- `Win + LeftArrow`: move and re-size working window to the *left* half the screen
