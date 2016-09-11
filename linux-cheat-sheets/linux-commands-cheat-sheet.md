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

### `chmod` 
- `sudo chmod 776 <file>` 
- [`sudo -R chmod 776 <dir>`](http://stackoverflow.com/a/3740159/1833118): chmod recursively 

### `chown`
- [`find . -type f -name '*.pdf' | xargs chown someuser:somegroup`](http://superuser.com/a/260939): This starts in current dir '.' to look for files (filetype f) of name pattern `'*.pdf'` then passes to xargs, which constructs a command line to chmod. 
- [chown -R <usr:grp> <dir>](http://superuser.com/q/260925): chown recursively

### Move (Rename) and Copy

- `mv srcDir destDir`: move srcDir to destDir recursively (no `-R`)
- `cp -R srcDir destDir`: copy srcDir to destDir recursively (`-R`)
- `cp -R srcDir destDir/`: ???
- `cp -R srcDir/ destDir/`: ???
- `cp -R srcDir/ destDir`: ???
- [Copying multiple specific files from one folder to another](http://askubuntu.com/a/327285/306000)

  - `cp /home/usr/dir/{file1,file2,file3,file4} /home/usr/destination/` *Note:* no space between files
  - `cp /home/usr/dir/file{1..4} ./`
- [Remote copy file or directory](http://askubuntu.com/a/446726/306000)
  - `scp -r /path/to/local/dir user@remotehost:/path/to/remote/dir`

### Remove File/Dir
- [Kinds of `rm`](http://askubuntu.com/a/60433/306000)
  - `rm -rf /path/to/directory`: remove the folder
  - `rm -rf /path/to/directory/*`: remove things in the folder (not the folder itself)
  - `rm -f /path/to/directory/*`: remove files (not folder) in this folder

### [Rsync: a remote and local file synchronization tool](https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories-on-a-vps)
- `rsync -avzP -e 'ssh' /path/to/local/dir user@remotehost:/path/to/remote/dir`
  - `-a`: a combination flag
  - `-v`: verbose 
  - `-z`: compression
  - `-P`: show progress
	
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

### Printer
- [`:hardcopy`](http://stackoverflow.com/a/1410821/1833118): send this file to printer
- [`:set printdevice = xxx`](http://stackoverflow.com/a/26287771/1833118): set options for printing
- [`:hardcopy > output.pdf`](http://stackoverflow.com/a/26287771/1833118): print as pdf

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

## [`ps`]()
- `ps aux | grep apt`: search `apt`-related processes
- [`ps aux | grep KEYWORD | grep -v grep | grep -v KEYWORD | awk '{print $2}'`](http://stackoverflow.com/a/14669525/1833118): extract pid from `ps aux | grep`

## [`kill`]()
- [kill -s 9 `ps aux | grep skype`](http://askubuntu.com/a/396529/306000)

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
