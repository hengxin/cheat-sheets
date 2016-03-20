# Vim (GVIM) Plugins Cheat Sheet

## [The `vimrc` File](http://vim.wikia.com/wiki/Vimrc)
`vimrc` stands for "vim runtime configuration".
- On Unix based systems, it is `.vimrc`;
- On Windows systems, it is `_vimrc`.

Unless otherwise stated, all the following configurations are installed in the `vimrc` file.

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
