# Linux Commands Cheat Sheet

## Terminals

### Install
- `sudo apt install gnome-terminal`
- `sudo apt remove gnome-terminal`

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
- `-a`: show all files, including dot files
- `-l`: long format
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
    - `du`: disk usage; `df`: disk free space
    - `-s`: summary
    - `-h`: human-readable
    - `--max-depth=<NUM>`: for directory and subdirectories

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
- `mkdir <dir>`: create empty directory `<dir>`
- `touch <file>`: create empty file `<file>`

### Move (Rename), Copy, and Remove

- `mv srcDir destDir`: move srcDir to destDir recursively (no `-R`)
- `cp -R srcDir destDir`: copy srcDir to destDir recursively (`-R`)
- `cp -R srcDir destDir/`: ???
- `cp -R srcDir/ destDir/`: ???
- `cp -R srcDir/ destDir`: ???
- [Copying multiple specific files from one folder to another](http://askubuntu.com/a/327285/306000)

  - `cp /home/usr/dir/{file1,file2,file3,file4} /home/usr/destination/` *Note:* no space between files
  - `cp /home/usr/dir/file{1..4} ./`

### Read and Write Files and Directories
- `head -n 10 <file>`: Print the first 10 lines of file
- `tail -n 10 <file>`: Print the last 10 lines of file
- `tail -f <file>`: Print appended data as the file grows
- `tail -f -s <N> <file>`: Sleep for N seconds between iterations
- [`watch "ls -lrt | tail -10"`](http://www.jamesseibel.com/blog/how-to-tail-a-directory-in-linux): tail *-f* a directory

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

## System Monitor

- `sudo poweroff`: shutdown
- `sudo reboot`: reboot
- [`free -m`](http://askubuntu.com/a/9655/306000): memory usage; also try `watch -n 5 free -m`
- [`ps aux --sort -rss | head -n 15`](http://unix.stackexchange.com/a/92498): sorting down processes by memory usage

## Processes
- [`jobs` and then `fg <num>`](http://stackoverflow.com/a/14099502/1833118): show a list of background processes and bring some one back to the foreground
- [`fg`](http://unix.stackexchange.com/a/45029): bring the last process back to foreground
- [`jobs` and then `kill -19 %job-id`](http://unix.stackexchange.com/a/45029): suspend the process (`Ctrl + Z`)

## Networking

### Ping
- `ping <ip> >> ping-log 2>&1`: also redirected stat into file.
- `kill -SIGINT <ping-pid>`: If the program is terminated with a SIGINT, a brief summary is displayed.
- [`kill -SIGQUIT <ping-pid>`](http://unix.stackexchange.com/a/143853): Shorter current statistics can be obtained without termination of process with signal SIGQUIT.
- `kill -SIGINT `pgrep ping``: show stat and stop ping
- `kill -SIGQUIT `pgrep ping``: show stat without stopping ping
- [`kill $(pidof ping)`](http://unix.stackexchange.com/a/58141): kill all ping processes

### IP
- [`getent hosts <host> | awk 'NR==1 { print $1 }'`](http://unix.stackexchange.com/a/20793): resolve hostname to ip
