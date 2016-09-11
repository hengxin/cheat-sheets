# Vim Commands Cheat Sheet

## Overview
The following wonderful graphical cheat sheet of vi/vim is stolen from [This Blog Article: Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html).

![vi-vim-cheat-sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)

## Resources for VIM

### Tutorials
- [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html) `6 misconcepts about VIM and 6 powerful examples`

### Tools

- [ViEmu](http://www.viemu.com/): `Vi/vim emulation for Visual Studio, Xcode, Word, Outlook & SQL Server`

## How to Exit

## Vim Sessions

## File

### [netrw: Vimmers, You Don’t Need NerdTree](https://blog.mozhu.info/vimmers-you-dont-need-nerdtree-18f627b561c3)
- `:E` or `:Explore`: enter the explorer mode
- `i`: toggling the list style
- `d`: creates a new directory
- `%`: creates and opens a new file
- `D`: deletes a directory or file
- `R`: renames a file
- `t`: enter the file/directory under the cursor in a new tab
- `o`: opens the file in a horizontal split
- `v`: opens the file in a vertical split
- `c-w=`: resize split windows
- `c-6`: go back to the previous buffer (i.e., exit netrw without selecting any file)

### Editing a File

- `p`: put text *after* the cursor
- `shift-p`: put text *before* the cursor

#### Inserting Text
- [:%s/^/\=printf('%-4d', line('.'))](http://vim.wikia.com/wiki/Insert_line_numbers): insert line numbers at the start of every line
  - `^`: matches the start of every line
  - `\=`: the result of evaluating the following expression
  - `printf`: specify the format

#### [Substitute characters and lines easily](http://vim.wikia.com/wiki/Substitute_characters_and_lines_easily)
- `[count]s`: substitute [count] chars
- `[count]S`: delete [count] lines and enter the insert mode

#### Editing Text in Insert Mode
- `c-h`: delete a char
- `c-w`: delete a word

## Motion

### Jumping

#### [Jumping to previously edited place](http://stackoverflow.com/q/2131305/1833118)

- `'.` or ``.`: The last change is held in the mark named `.`
- `g;`: Go to [count] older position in change list
- `g,`: Go to [count] newer cursor position in change list

#### [Jumps](http://vim.wikia.com/wiki/Jumping_to_previously_visited_locations)
- `c-o`: jump back to the previous location
- `c-i`: jump forward to the next location 
- `:jumps`: display the jump list, then
  - `[count] c-o`
  - `[count] c-i`

## [Search](http://vim.wikia.com/wiki/Searching)

### Basic search
- `/<text to search>`
  - `n`: next
  - `N`: previous
  - `ggn`: the first one
  - `GN`: the last one
  - `*`: search for the word under cursor
- [`:noh`: Vim clear last search highlighting](http://stackoverflow.com/a/658478/1833118)

## Search and Replace

### [Basic search and replace](http://vim.wikia.com/wiki/Search_and_replace)
- `:%s /foo/bar/gci`: replace each occurrence of "foo" with "bar" (`%`) in all lines, `g`lobally, ask for `c`onfirmation, case `i`nsensitive (`I` is for case sensitive)
- `:s /foo/bar/g`: in one line
- `:%s /\<foo\>/bar/g`: exactly the words "foo"
- `:%s /foo//g`: delete occurrences of "foo"

### [Count number of matches of a pattern](http://vim.wikia.com/wiki/Count_number_of_matches_of_a_pattern):
- `:%s/pattern//gn`: count the number of *times* that pattern matches text 
- `:%s/pattern//n`: count the number of *lines* where the pattern matches
- `*` => `:%s///gn`: count the number of occurrences of the word under the cursor
    
### Use Cases
- [Multiple search and replace in one line](http://stackoverflow.com/a/4737221/1833118)

  `:%s/aaa/bbb/e | %s/111/222/e` (`e`: suppress errors)

- [Shift+V | /\%V<pattern>](http://stackoverflow.com/a/16572822/1833118): search in current line only

## Word Processing

### [Word Count](http://vim.wikia.com/wiki/Word_count)
- `g` => `Ctrl + g`: in the current buffer or a visual block
- `:w !wc`: using external program `wc`

### Formatting

- `gq`: formating selected text

## Windows and Screens
- `c-w | c-x`: Rotates the current focused window with the closest window to the right.
- `:on (:only)`: leave this split window only

### [How to move screen without moving cursor in Vim?](http://stackoverflow.com/a/3458821/1833118)
- `zz`: move current line to the middle of the screen
- `zt`: move current line to the top of the screen
- `zb`: move current line to the bottom of the screen

## Tag

## Shell Commands
- [`:!<cmd>`](http://superuser.com/a/285505): Execute a command with a shell from within Vim
- [`:shell`](http://superuser.com/a/285505): Start a shell from within Vim