# Shell Programming Cheat Sheet

## Tutorials

## Environment Variables
- `$PWD`: present/current wording directory
- `$PATH`: 
- `$HOSTNAME`: hostname
- `LANG=en_us_8859_1`: set the language for current shell

## How to Escape!
- [Escape `$` in double quote](http://superuser.com/a/178429)
```
ssh $HOST "ls -l | awk '{print \$1}'"
```

## Basic Syntax

### Variables
- [Bash: Assign Output of Shell Command To Variable](http://www.cyberciti.biz/faq/unix-linux-bsd-appleosx-bash-assign-variable-command-output/)
```
now=$(date)
now=`date`
```

- [store command in a variable and later execute it](http://stackoverflow.com/q/4668640/1833118)
```
cmd="ls -la $APPROOTDIR | grep exception"
$cmd
```

### The very basics
- `#`: for comment
- `#!/bash/bin`: *must* be the first line
- `mv <shell-file> <path-in-$PATH>`
- `chmod +x <shell-file>`: set the shell file executable

### Control structures
- if/then/else/fi
- case/in/esac

A pattern matching [example](http://stackoverflow.com/a/4555979/1833118):
```
case $str in
    a*) # matches anything starting with "a"
		foo
		;;    
    b?) # matches any two-character string starting with "b"
		bar
		;;    
    c[de]) # matches "cd" or "ce"
		baz
		;;    
    me?(e)t) # matches "met" or "meet"
		qux
		;;    
    @(a|e|i|o|u)) # matches one vowel
		fuzz
		;;   
	*)
		;;
esac
```
- while/do/done

## File and Directory

### Paths
- [`$a/$b`](http://stackoverflow.com/a/24026057/1833118): concatenate two strings to form a path
- [Get just the filename from a path in a Bash script](http://stackoverflow.com/a/3362952/1833118)
```
> a=/tmp/file.txt
> b=$(basename $a)
> echo $b
file.txt
```
- [Extract filename and extension in Bash](http://stackoverflow.com/a/965069/1833118)
```
> FILE="example.tar.gz"
> echo "${FILE%%.*}"
example
> echo "${FILE%.*}"
example.tar
> echo "${FILE#*.}"
tar.gz
> echo "${FILE##*.}"
gz
```

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
- `if [ "$a" = "$b" ]`: test equality of two strings
- [`IFS=', ' read -r -a array <<< "$string"`](http://stackoverflow.com/a/10586169/1833118): string split

## [Array](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_10_02.html)
- `declare -a array`: declare an array explicitly
- `array=` OR `array=()`: set an empty array
- `array=(one two three)`: declare an array with initial values
- [`if [ -z "$array" ]`](http://serverfault.com/a/700936) or [`if [ ${#errors[@]} -eq 0 ]`](http://serverfault.com/a/477506): check if array is empty
- `if [ -n "$array" ]`: check if array is not empty
- [iterate over an array:](http://stackoverflow.com/a/8880633/1833118)
```
for i in "${arr[@]}"
do
   echo "$i"
done
```

- [`ele=${arr[$RANDOM % ${#arr[@]} ]}`](http://stackoverflow.com/a/2388555/1833118): randomly select an element from an array
- [``](http://stackoverflow.com/q/3685970/1833118): check if an array contains a value

## Date and Time
- [`date +"%A, %T, %B %d, %Y"`](http://www.simplehelp.net/2008/12/18/the-linux-date-command/): Friday, 10:10:00, June 30, 2016
- [`date --date="next month"`]: next month|last month|5 days ago|tomorrow|next Sunday|
- [`time <cmd>`](http://unix.stackexchange.com/a/52315): timing

## Threads
- `sleep 5s/5m/5h/5d`: waits 5 seconds/minutes/hours/days