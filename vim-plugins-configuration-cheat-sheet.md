# Vim (GVIM) Plugins and Configurations Cheat Sheet

## [The `vimrc` File](http://vim.wikia.com/wiki/Vimrc)
`vimrc` stands for "vim runtime configuration".
- On Unix based systems, it is `.vimrc`;
- On Windows systems, it is `_vimrc`.

## Runtime Configurations

### [Setting Fonts@stackoverflow](http://stackoverflow.com/a/17508781/1833118)
- `:set guifont=*`: to pop up a dialog that allows you to select the font;
- `:set guifont?`: to show the current guifont;
- adding `set guifont=<font>` (e.g., `set guifont=Lucida_Sans_Typewriter:h14:cANSI` to your `vimrc` file.

Note that spaces in the font need to be [escaped](http://vim.wikia.com/wiki/Change_font), e.g., `set guifont=Monospace\ 10`

## Vim Plugin Manager
- [Vundle](https://github.com/VundleVim/Vundle.vim)
- [Vundle for Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows)

## [LatexSuite](http://vim-latex.sourceforge.net/)

### GVIM for Linux

### GVIM 7.4 for Windows 
LatexSuite is pre-installed.

#### Compiler and viewer settings

- [xelatex + bibtex + sumatra pdf viewer@stackoverflow](http://tex.stackexchange.com/a/103807/23098)
```
let g:tex_flavor='xelatex'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_FormatDependency_pdf = 'pdf'
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_ViewRule_pdf =  'SumatraPDF -reuse-instance '
```

## [EasyMotion](https://github.com/easymotion/vim-easymotion) 

## [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
