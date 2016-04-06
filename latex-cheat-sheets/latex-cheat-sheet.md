# LaTeX Cheat Sheet

This document is for LaTeX typesetting. See separate documents for [`TikZ`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-tikz-cheat-sheet.md) and [`PGFPlots`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-pgfplots-cheat-sheet.md).

## Official Documents and Tutorials
- [CTAN: Comprehensive TEX Archive Network](http://www.ctan.org/)
- [The TeX Catalogue Online](http://texcatalogue.ctan.org/index.html)
- [TeXdoc Online](http://texdoc.net/)

## Document Class

- article

### For Chinese Language

- [ctexart @ tex.stackexchange](http://tex.stackexchange.com/a/17637/23098)

  `ctexart` is designed for Chinese typesetting. 
  Font sizes, indentation, name translation, line spacing, ... everything is set.
  
  ```
  % UTF-8 encoding
  % Compile with latex+dvipdfmx, pdflatex, xelatex or lualatex
  % XeLaTeX is recommanded
  \documentclass[UTF8]{ctexart}
  \begin{document}
  文章内容。
  \end{document}
  ```
 OR,
 
 ```
 \documentclass{article}
 \usepackage[UTF8]{ctex}
 ```

## Basic LaTeX Typesetting

### Colors
- [Page 8 of "A very minimal introduction to TikZ"](http://cremeronline.com/LaTeX/minimaltikz.pdf)
  
  It shows pre-defined colors: `black, blue, brown, cyan, darkgray, gray, green, lightgray, lime, magenta, olive, orange, pink, purple, red, teal, violet, white, yellow`.
- [LaTeX Color Definition](http://latexcolor.com/)

  It lists a collection of color definitions like `\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}`.
- [LaTeX/Colors @ wiki](https://en.wikibooks.org/wiki/LaTeX/Colors)
  
  It gives pre-defined colors and shows how to define colors. It also mentions other packages like `color` and `xcolor`.


## Theorems and Proofs

```
\documentclass{article}
\usepackage{amsthm}
 
\begin{document}
  \begin{lemma}
    Lemma here.
  \end{lemma}
 
  \begin{proof}
    Proof here.
  \end{proof}
\end{document}
```

## Tables
```
\begin{table}[t!]
  \renewcommand{\arraystretch}{1.2}
  \centering
  \caption{}
  \label{tbl:}
  \resizebox{\textwidth}{!}{%
  \begin{tabular}{}
  \end{tabular}%
  }
\end{table}
```

- `table*` for spanning two columns
- `\renewcommand{\arraystretch}{1.2}` to stretch the table vertically
- `\resizebox{\textwidth}{!}{% ... %}` to scale the table to text width


## Figures

## Maths

### Resources
- [Short Math Guide for LaTeX](ftp://ftp.ams.org/pub/tex/doc/amsmath/short-math-guide.pdf)
- [Comprehensive LaTeX Symbol List](http://mirror.jmu.edu/pub/CTAN/info/symbols/comprehensive/symbols-a4.pdf)
- [Detexify: LaTeX Handwritten Symbol Recognition](http://detexify.kirelabs.org/classify.html)

### Common Usages
- [bold math symbols](http://tex.stackexchange.com/questions/595/how-can-i-get-bold-math-symbols)
  - `\boldsymbol{\infty}` or `\pmb{\infty}` to one symbol at a time
  - `\boldmath$x^2$` or `$\mathbf{x^2}$`
  - using `bm` package: `$\bm{a}=\bm{\alpha}$`

## Algorithms

### [Footnote in algorithm](http://tex.stackexchange.com/a/18444/23098)

Using `footnotemark` and `footnotetext`.

## Resources

### Packages

### Tools
- [Tables Generator](http://www.tablesgenerator.com/)

  It is for LaTeX tables, HTML tables, Text tables, Markdown tables, and MediaWiki tables.
