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

### Searching for the current word:

## [Search and Replace](http://vim.wikia.com/wiki/Search_and_replace)

### Basic search and replace
- `:%s /foo/bar/gci`: replace each occurrence of "foo" with "bar" (`%`) in all lines, `g`lobally, ask for `c`onfirmation, case `i`nsensitive (`I` is for case sensitive)
- `:s /foo/bar/g`: in one line
- `:%s /\<foo\>/bar/g`: exactly the words "foo"
- `:%s /foo//g`: delete occurrences of "foo"

## Word Processing

### Formatting

- `gq`: formating selected text

## Tag

## Resources for VIM

### Tutorials
- [Why, oh WHY, do those #?@! nutheads use vi?](http://www.viemu.com/a-why-vi-vim.html) `6 misconcepts about VIM and 6 powerful examples`

### Tools
- [ViEmu](http://www.viemu.com/): `Vi/vim emulation for Visual Studio, Xcode, Word, Outlook & SQL Server`





