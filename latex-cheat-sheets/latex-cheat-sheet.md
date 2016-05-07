# LaTeX Cheat Sheet

This document is for basic LaTeX typesetting. See other documents for [`TikZ`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-tikz-cheat-sheet.md) and [`PGFPlots`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-pgfplots-cheat-sheet.md).

For Chinese language, see [latex-chinese-cheat-sheet.md](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-chinese-cheat-sheet.md).

## Official Documents and Tutorials
- [CTAN: Comprehensive TEX Archive Network](http://www.ctan.org/)
- [The TeX Catalogue Online](http://texcatalogue.ctan.org/index.html)
- [TeXdoc Online](http://texdoc.net/)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [TeX Frequently Asked Questions](http://www.tex.ac.uk/)

## LaTeX Templates
- [LaTeX Templates](http://www.latextemplates.com/)
  
  {The best source of free quality LaTeX templates}

## Books

### LaTeX Basics
### LaTeX Programming
- [Victor Eijkhout/TeX by Topic](https://bitbucket.org/VictorEijkhout/tex-by-topic)

## Blogs, Q/A Sites, Forums
- [TeX Stack Exchange](http://tex.stackexchange.com/)
- [TeXblog](http://texblog.net/)
- [\howto TEX](http://www.howtotex.com/)
- [StackTex@Twitter](https://twitter.com/StackTex)

## Online LaTeX Editors
- [Overleaf](https://www.overleaf.com/)

  Overleaf is an online LaTeX and Rich Text collaborative writing and publishing tool that makes the whole process of writing, editing and publishing scientific documents much quicker and easier.
- [ShareLaTeX](https://www.sharelatex.com/)

  LaTeX, Evolved. The easy to use, online, collaborative LaTeX editor.

## LaTeX Ecosystems
- [Differences between LuaTeX, ConTeXt and XeTeX](http://tex.stackexchange.com/q/36/23098)

## Document Class

- article

## Basic LaTeX Typesetting

### Fonts
- [Font Size](http://tex.stackexchange.com/a/107058/23098)

  - `\tiny  \scriptsize  \footnotesize  \small  \normalsize  \large  \Large  \LARGE  \huge  \Huge`
  - In Math: `\displaystyle  \textstyle  \scriptstyle  \scriptscriptstyle`
- [Change font size of an align environment](http://tex.stackexchange.com/a/33589/23098)
  ```
  {\tiny
    \begin{align}
      a &< b
    \end{align}
  }%
  Following paragraph.
  ```
  Insert a `%` symbol after closing the group with `\tiny`.

### Colors
- [Page 8 of "A very minimal introduction to TikZ"](http://cremeronline.com/LaTeX/minimaltikz.pdf)
  
  It shows pre-defined colors: `black, blue, brown, cyan, darkgray, gray, green, lightgray, lime, magenta, olive, orange, pink, purple, red, teal, violet, white, yellow`.
- [LaTeX Color Definition](http://latexcolor.com/)

  It lists a collection of color definitions like `\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}`.
- [LaTeX/Colors @ wiki](https://en.wikibooks.org/wiki/LaTeX/Colors)
  
  It gives pre-defined colors and shows how to define colors. It also mentions other packages like `color` and `xcolor`.

- [Lighten colors](http://tex.stackexchange.com/a/48663/23098)
  Using the `xcolor` package: `red!60`

## Theorems and Proofs

### Packages
- [`\usepackage{amsthm}`]()

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

## Floats

### General Settings
- [How to change the spacing between figures/tables and text?](http://tex.stackexchange.com/a/26522/23098)
 - Single column: `\setlength{\textfloatsep}{10pt plus 1.0pt minus 2.0pt}`
```
\textfloatsep — distance between floats on the top or the bottom and the text;
\floatsep — distance between two floats;
\intextsep — distance between floats inserted inside the page text (using h) and the text proper.

When typesetting in two column mode, two more lengths are available:
\dbltextfloatsep — distance between a float spanning both columns and the text;
\dblfloatsep — distance between two floats spanning both columns.
```
### General Packages
- [rotating](https://puzzling.org/technology/2012/06/useful-latex-packages-tables-and-figures/)

  It is for a big table (`\begin{sidewaystable}`) or figure (`\begin{sidewaysfigure}`) that should be rotated sideways onto its own page.


### Figures

### Tables

#### `table` and `table*`
- `table*` for spanning two columns
- `\renewcommand{\arraystretch}{1.2}` to stretch the table vertically
- `\resizebox{\textwidth}{!}{% ... %}` to scale the table to text width
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

#### `threeparttable` package
- [`\tnote` and `tablenotes` @ Section 9.3.1 Footnotes within Tables (HOWTO IEEEtran)](https://www.cs.cmu.edu/~steffan/personal/tmp/IEEEtran_HOWTO.pdf)
- [Resizing table when using package {threeparttable}](http://tex.stackexchange.com/a/205525/23098)

```
\begin{table*}[t!]
  \renewcommand{\arraystretch}{1.1}
  \centering
  \caption{}
  \label{tbl:}
  \resizebox{\textwidth}{!}{% OR: \begin{adjustbox}{max width=\textwidth}
  \begin{threeparttable}[b]
  \begin{tabular}{|c||c|c|}
  \hline
  & data1 \tnote{a} & data2 \tnote{1} & data3 \tnote{a}
  \hline
  \end{tabular}%
  \begin{tablenotes}
    \footnotesize
    \item[a] footnote for {a}.
    \item[1] footnote for {1}.
  \end{tablenotes}
  \end{threeparttable}
}%                            OR: \end{adjustbox}
\end{table*}
```

#### [`dcolumn` package](https://puzzling.org/technology/2012/06/useful-latex-packages-tables-and-figures/)
The dcolumn package produces tabular columns that are perfectly aligned on a decimal point.
```
usepackage{dcolumn}
% create a new column type, d, which takes the . out of numbers, replacing the .
% with a cdot and aligning on it.
newcolumntype{d}[1]{D{.}{cdot}{#1}}

% a tabular enviroment with a 1 and 3 figures after the decimal point column
begin{tabular}{d{1}d{3}}
multicolumn{1}{c}{Heading 1} & multicolumn{1}{c}{Heading 2}\
1.6 & 1.657
\
2.0 & 6.563
\
end{tabular}
```

## Maths

### Docs and Tools
- [Short Math Guide for LaTeX](ftp://ftp.ams.org/pub/tex/doc/amsmath/short-math-guide.pdf)
- [Comprehensive LaTeX Symbol List](http://mirror.jmu.edu/pub/CTAN/info/symbols/comprehensive/symbols-a4.pdf)
- [Detexify: LaTeX Handwritten Symbol Recognition](http://detexify.kirelabs.org/classify.html)

### Maths Packages
- `\usepackage{amsfonts}`: font (e.g., $\mathbb{R}$)
- `\usepackage{amssymb}`: load `amsfonts` automatically
- `usepackage{amsmath}`

### Array ``
- [Adjusting space between array rows and columns](http://tex.stackexchange.com/a/103511/23098)
  - Using `\arraycolsep` and `\arraystretch`
  ```
  \[\arraycolsep=1.0pt\def\arraystretch{1.5}
    \begin{array}{rll}
      x(1) &= \dfrac{x(0)}{1} &= x(0)\\
      x(2) &= \dfrac{x(1)}{2} &= \dfrac{x(0)}{2}\\
    \end{array}
  \]
  ```

### Common Usages
- [bold math symbols](http://tex.stackexchange.com/questions/595/how-can-i-get-bold-math-symbols)
  - `$\boldsymbol{\infty}$` or `$\pmb{\infty}$` to one symbol at a time
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
