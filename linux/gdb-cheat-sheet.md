# GDB command cheat sheet

**Note**: The abbreviation of command is surrounded by round brackets.

## Start & Quit

### Start gdb and program
- **gdb** *program*
  - Start gdb to debug a program.
- **gdb** *program* *corefile*
  - Start gdb and open a coredump file.
- **gdb** --pid *pid*
  
  **attach** *pid* 
  - attach to a process
- **run** (r)
  - run the program 
- **gdb** *program* --args *arg1* *arg2* 
 
  **run** *arg1* *arg2*
  - run the program with arguments

### Kill and quit
- **kill**
  - Kill the running program.


- **quit** (q) 

  Ctrl + d
  - exit gdb


## Show information
### info
Generic command for showing things about the program being debugged.
- **info** args
  - Print the arguments to the function of the current stack frame 
- **info** locals
  - Print the local variables in the currently selected stack frame.
- **info** breakpoints (info b)
  - Print informations about the breakpoints and watchpoints.
- **info** watchpoints *watchpoint*
  - Print status of specified watchpoints (all watchpoints if no argument);
- **info** threads
  - Display currently known threads
- **info** stack (info s)
  - Print the backtrace of the stack.
- **info** frame (info f)
  - Print all about selected stack frame.
- **info** source
  - Print information about the current source file
- **info** types
  - Print all type names.
- **info** variables
  - Print all global and static variable names. 

### show
Generic command for showing things about the debugger.
- **show** directories
  - Print all directories in which GDB searches for source files.
- **show** listsize
  - Print how many are shown in the "list" command.

## Variables and memory
### format specifier
- o - octal
- x - hexadecimal
- u - unsigned decimal
- t - binary
- f - floating point
- a - address
- c - char
- s - string
### size modifier
- b - byte
- h - halfword (16-bit value)
- w - word (32-bit value)
- g - giant word (64-bit value)
### print
- **print** *expression*
  - Prints the value of a given expression.
- **print** $*i*
  - Repeat the output produced by its i-th invocation.
- **print** {*Type*}*Address*
  
  **print** \*(*PointerType*)*Address*
  - Print the content of specified address as type.
- **print** *FirstElement*@*ElementCount*
  - Interpret the FirstElement expression as an array of ElementCount sequential elements.
- **print** /*Format* *Expression*
  - Overriding the output format used by the command.
### display
Just like print, but will print each time GDB stops at a breakpoint or after a step.
- **display** *Expression*
- **x** /*Format* *Expression*
- **display**
  - Show the current list expressions enabled for auto-displaying.
- **enable** display *display*

  **disable** display *display*
  - Enable or disable the display with the given number.

## Breakpoint
### setting breakpoints
- **break** *function*
- **break** *line*
- **break** *filename*:*function*
- **break** *filename*:*line*
- **delete** *breakpoint*
### removing breakpoints
- **clear**
  - Delete all breakpoints.
- **enable** *breakpoint*
- **disable** *breakpoint*
### condition

## Watchpoint
Similar usage to breakpoints.
- **watch** *expression*

## Stepping
- **step** *count* (s)
  - Go to next line and step into functions.
  - If count is specified, gdb will repeat this for count times.
- **next** *count* (n)
  - Go to next line without stepping in.
- **continue** *ignore-count* (c)
  - Continue the program until next breakpoint is hit.
  - If ignore-count is specified, next ignore-count breakpoint will be ignored.
- **finish**
  - Continue the function until current function is finished.
  - Will print the return value.

## Stack 
- **backtrace** *n*
  **where** *n*
  - Print stack information.
  - If n is set, positive n means showing top n stack frames, negative n means showing bottom n stack frames.
- **set backtrace limit** *n*
  - Set max frame number when using backtrace.
- **frame** *n* (f *n*)
  
  **frame** *addr* 
  - Select the stack frame to operate on by frame number or pc address.


## Multithreads
- **thread** *thread*
  - Choose thread to operate on.
- **thread** apply *thread-id-list* *command*
  
  **thread** apply all *command*
  - Execute command on all or specified list of threads.
- **set scheduler-locking** *mode*
  - Mode can be:
    - **off**: There is no locking and any thread may run at any time.
    - **on**: Only the current thread may run when the inferior is resumed
    - **step**: It prevents other threads from preempting the current thread while you are stepping, so that the focus of debugging does not change unexpectedly. Other threads never get a chance to run when you step, and they are completely free to run when you use commands like ‘continue’, ‘until’, or ‘finish’.
- **show scheduler-locking**
  - Display the current scheduler locking mode.



## Reference

You may find more helpful usages in these links.

- [GDB cheatsheet](https://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)
- [VisualGDB](https://visualgdb.com/gdbreference/commands/)
- [Debugging with GDB](https://sourceware.org/gdb/current/onlinedocs/gdb/)