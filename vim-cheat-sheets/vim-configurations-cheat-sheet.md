# Vim Configurations Cheat Sheet

## [The `vimrc` File](http://vim.wikia.com/wiki/Vimrc)
`vimrc` stands for "vim runtime configuration".
- On Unix based systems, it is `.vimrc`;
- On Windows systems, it is `_vimrc`.

*Unless otherwise stated, all the following configurations can be installed in the `vimrc` file.*

### [Spell Checking](https://robots.thoughtbot.com/vim-spell-checking)
- `:setlocal spell`: switch on spell checking
- `:setlocal spell spelllang=en us`: specifying language
- `Ctrl + N | Ctrl + P`: word completion

### [Wrap](https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim)
- `:set textwidth=100`

### [Line Numbers](http://vim.wikia.com/wiki/Display_line_numbers)
- `:set number`: display line numbers
- `:set nonumber`: display no line numbers

## [Setting Fonts](http://stackoverflow.com/a/17508781/1833118)
- `:set guifont=*`: to pop up a dialog that allows you to select the font;
- `:set guifont?`: to show the current guifont;
- adding `set guifont=<font>` (e.g., `set guifont=Lucida_Sans_Typewriter:h14:cANSI` to your `vimrc` file.

Note that spaces in the font need to be [escaped](http://vim.wikia.com/wiki/Change_font), e.g., `set guifont=Monospace\ 10`
