# LaTeX Document Structure Cheat Sheet

## Input Files

- [Scale an `\input` TeX File](https://tex.stackexchange.com/a/98142/23098)

```
% `!` keeps the aspect ratio; I prefer to this way.
\resizebox{0.65\textwidth}{!}{\input{plot}} 
\scalebox{0.5}{\input{plot}}
```

## Geometry

- [Using the `geometry` package](https://tex.stackexchange.com/a/141462/23098)
```
\usepackage[a4paper, left = 3cm, right = 2cm, top = 2.5cm, bottom = 2.5cm]{geometry}
```


## Pages and Columns
- [What is the use of \clearpage{\thispagestyle{empty}\cleardoublepage}](https://tex.stackexchange.com/q/360739/23098)

```
Here's what the commands are supposed to do.

- \clearpage ends the current page and prepares LaTeX to build a new one
- { opens a group
- \thispagestyle{empty} tells LaTeX to avoid adorning the current page with headers and footers
- \cleardoublepage tells LaTeX to issue a new page if the current one (the fresh page initiated after \clearpage) is 
odd numbered
- } closes the group
```

## Footnotes

- [How to restart \footnote numbering every page](https://stackoverflow.com/q/3701605/1833118)

```
\documentclass{article}
\usepackage{perpage} %the perpage package
\MakePerPage{footnote} %the perpage package command
\begin{document}
```

