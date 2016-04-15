# LaTeX for Chinese Cheat Sheet (LaTeX 中文环境)

## Docs and Tutorials
- [[LaTeX基础]](http://olliewiki.com/NoteBook/latex/latexnote.html)

## Documentclass `ctexart`
- [ctexart @ tex.stackexchange](http://tex.stackexchange.com/a/17637/23098)

  `ctexart` is designed for Chinese typesetting. 
  Font sizes, indentation, name translation, line spacing, ... everything is set.
  
  ```
  % UTF-8 encoding
  % Compile with latex+dvipdfmx, pdflatex, xelatex or lualatex
  % XeLaTeX is recommanded
  \documentclass[UTF8, a4paper]{ctexart}
  \renewcommand{\proofname}{证明}
  \begin{document}
  文章内容。
  \end{document}
  ```
 OR,
 
 ```
 \documentclass{article}
 \usepackage[UTF8]{ctex}
 ```
 
 ## LaTeX for PhD Thesis in Nanjing University
