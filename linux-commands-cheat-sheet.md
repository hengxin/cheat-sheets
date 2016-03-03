# Linux Commands Cheat Sheet

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

### Create

### Move (Rename), Copy, and Remove

- `cp -R srcDir destDir` copy srcDir to destDir recursively (`-R`)
