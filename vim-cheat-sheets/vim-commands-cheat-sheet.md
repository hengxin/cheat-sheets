# Vim Commands Cheat Sheet

## Overview
The following wonderful graphical cheat sheet of vi/vim is stolen from [This Blog Article: Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html).

![vi-vim-cheat-sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)

## How to Exit

## File

### Editing a File

### Inserting Text
- [:%s/^/\=printf('%-4d', line('.'))](http://vim.wikia.com/wiki/Insert_line_numbers): insert line numbers at the start of every line
  - `^`: matches the start of every line
  - `\=`: the result of evaluating the following expression
  - `printf`: specify the format

## Motion

### Jumping

#### [Jumping to previously edited place](http://stackoverflow.com/q/2131305/1833118)

- `'.` or ``.`: The last change is held in the mark named `.`
- `g;`: Go to [count] older position in change list
- `g,`: Go to [count] newer cursor position in change list

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

## Windows (Splitted Windows)
- `Ctrl + W | Ctrl + X`: Rotates the current focused window with the closest window to the right.

## Tag

## Resources for VIM

### Tutorials
- [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html) `6 misconcepts about VIM and 6 powerful examples`

### Tools
- [ViEmu](http://www.viemu.com/): `Vi/vim emulation for Visual Studio, Xcode, Word, Outlook & SQL Server`





