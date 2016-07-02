# Shell Programming Cheat Sheet

## Tutorials

## Environment Variables
- `$PWD`: present/current wording directory
- `$PATH`: 
- `$HOSTNAME`: hostname
- `LANG=en_us_8859_1`: set the language for current shell

## Basic Syntax

### The very basics
- `#`: for comment
- `#!/bash/bin`: *must* be the first line
- `mv <shell-file> <path-in-$PATH>`
- `chmod +x <shell-file>`: set the shell file executable

### Control structures
- if/then/else/fi
- case/in/esac
- while/do/done

## File and Directory

### Test file and directory
- `-d`: if a directory exists?
- `-f`: if a file exists?
- `-s`: is empty?

### Read/Write file and directory
- `mkdir "$dir"`: create new directory
- `echo -en "$line1\n$line2" >> log-file`: writing two lines
  - [`-e`](http://superuser.com/a/313939): Enables interpretation of escape sequences 
  - [`-n`](http://stackoverflow.com/a/18527247/1833118): Outputs no empty line on the end, so there is no mess with double empty lines 
- `echo -en '\n'`: writing an empty line

## String
- `"$a$b"`: concatenate two strings
- `full_path="$part1/$part2"`: concatenate two strings to build a path 
- `if [ "$a" = "$b" ]`: test equals of two strings

## Date and Time
- [`date +"%A, %T, %B %d, %Y"`](http://www.simplehelp.net/2008/12/18/the-linux-date-command/): Friday, 10:10:00, June 30, 2016
- [`date --date="next month"`]: next month|last month|5 days ago|tomorrow|next Sunday|
- [`time <cmd>`](http://unix.stackexchange.com/a/52315): timing

## Threads
- `sleep 5s/5m/5h/5d`: waits 5 seconds/minutes/hours/days