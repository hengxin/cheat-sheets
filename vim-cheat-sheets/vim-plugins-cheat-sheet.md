# Vim (GVIM) Plugins Cheat Sheet

## [The `vimrc` File](http://vim.wikia.com/wiki/Vimrc)
`vimrc` stands for "vim runtime configuration".
- On Unix based systems, it is `.vimrc`;
- On Windows systems, it is `_vimrc`.

Unless otherwise stated, all the following configurations are installed in the `vimrc` file.

## `Vundle` as the Vim Plugin Manager

- [Vundle for Linux](https://github.com/VundleVim/Vundle.vim)
- [Vundle for Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows)

### Install 
  - `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
  - Adding the following at the top of `.vimrc`:
  ```
  " ########## The following is for Vundle ##########
  " ########## See https://github.com/VundleVim/Vundle.vim ########## 
  set nocompatible              " be iMproved, required
  filetype off                  " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required
```

### Install Plugins in `.vimrc`
*Keep Plugin commands between vundle#begin/end.*

- `Plugin 'tpope/vim-fugitive'` from github rep.
- `Plugin 'L9'` from http://vim-scripts.org/vim/scripts.html
- `Plugin 'git://git.wincent.com/command-t.git'` from not hosted on github
- `Plugin 'file:///home/gmarik/path/to/plugin'` from local machine
- `Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}`  from a subdirectory of this repo called vim; `rtp`: runtimepath
- `Plugin 'ascenator/L9', {'name': 'newL9'}` avoiding Naming conflict

### Manage Plugins
- `:h vundle`
- `:PluginList`       - lists configured plugins
- `:PluginInstall`    - installs plugins; append `!` to update or just :PluginUpdate (Command line: `vim +PluginInstall +qall`)
- `:PluginSearch foo` - searches for foo; append `!` to refresh local cache
- `:PluginClean`      - confirms removal of unused plugins; append `!` to auto-approve removal

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

## [Surround](https://github.com/tpope/vim-surround)

### Install

Adding `Plugin 'tpope/vim-surround'` to `.vimrc`

### Usages
- `ds(`: delete surrounding of `()`; `(hello world)` => `hello world`
- `cs({`: change surrounding `()` to `{}`; `(hello world)` => `{hello world}`

## [EasyMotion](https://github.com/easymotion/vim-easymotion) 

## [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

## [vim-scripts/LanguageTool](https://github.com/vim-scripts/LanguageTool)

`This plugin integrates the LanguageTool grammar checker into Vim.`
### Install: 
 1. `Plugin 'vim-scripts/LanguageTool'` in `.vimrc` => `:PluginInstall`
 2. Install [standalone LanguageTool grammar checker for desktop](https://www.languagetool.org/)
 3. Put `let g:languagetool_jar="~/SoftwareService/LanguageTool-3.3/languagetool-commandline.jar"` in `.vimrc`

### Usages
- `:LanguageToolCheck`
- `:LanguageToolClear`

## [bashsupport](https://github.com/vim-scripts/bash-support.vim)

### Install

Adding `Plugin 'vim-scripts/bash-support.vim'` to `.vimrc`

### Usage
- [Make Vim as Your Bash-IDE Using bash-support Plugin](http://www.thegeekstuff.com/2009/02/make-vim-as-your-bash-ide-using-bash-support-plugin/) 
- `:h bashsupport`
