# Vim Commands Cheat Sheet

## Overview
The following wonderful graphical cheat sheet of vi/vim is stolen from [This Blog Article: Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html).

![vi-vim-cheat-sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)

## How to Exit

## File

### Editing a File

### Inserting Text

## Motion

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

## Word Processing

### [Word Count](http://vim.wikia.com/wiki/Word_count)
- `g` => `Ctrl + g`: in the current buffer or a visual block
- `:w !wc`: using external program `wc`

### Formatting

- `gq`: formating selected text

## Tag

## Resources for VIM

### Tutorials
- [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html) `6 misconcepts about VIM and 6 powerful examples`

### Tools
- [ViEmu](http://www.viemu.com/): `Vi/vim emulation for Visual Studio, Xcode, Word, Outlook & SQL Server`





