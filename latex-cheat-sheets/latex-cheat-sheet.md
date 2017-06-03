# LaTeX Cheat Sheet

This document is for basic LaTeX typesetting. See other documents for [`TikZ`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-tikz-cheat-sheet.md) and [`PGFPlots`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-pgfplots-cheat-sheet.md).

For Chinese language, see [latex-chinese-cheat-sheet.md](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-chinese-cheat-sheet.md).

## Official Documentfons and Tutorials
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

## LaTeX Compiler

- [Compiling a LaTeX document manually](http://tex.stackexchange.com/a/16889/23098)

In VIM:

```
:!pdflatex %
```

## Document Class

- article

## Basic LaTeX Typesetting

### Text
- [Strikethrough text](http://tex.stackexchange.com/a/23712/23098)
  - `\usepackage[normalem]{ulem} \sout{Hello World}`; see [ulem](http://ctan.org/pkg/ulem)
  - `\usepackage{soul} \st{Hellow world}`
  - `\sout{\textcolor{blue}{text}}`: with textcolor; It seems that `soul` does not work.
- [Thickness for \sout{} (strikethrough) command from ulem package](http://tex.stackexchange.com/a/287603/23098)
```
\usepackage{ulem}
\newcommand{\soutthick}[1]{%
    \renewcommand{\ULthickness}{2.4pt}%
       \sout{#1}%
    \renewcommand{\ULthickness}{.4pt}% Resetting to ulem default
}
\soutthick{text}
\sout{text}
```

### Alignment

- `\begin{center}  \end{center}`
- [`\centerline{}`](http://tex.stackexchange.com/a/24187/23098)
- [What commands are there for horizontal spacing?](http://tex.stackexchange.com/a/74354/23098)

lots of spacing units

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
  *Note:* Insert a `%` symbol after closing the group with `\tiny`.


- [How to remove the warnings “Font shape `OT1/cmss/m/n' in size <4> not available” and “Size substitutions with differences” in beamer?](http://tex.stackexchange.com/a/58088/23098)
  
  Adding `\usepackage{lmodern} % http://ctan.org/pkg/lm`

- [Simplest way to typeset entire document in sans serif](http://tex.stackexchange.com/a/2097/23098)
```
\renewcommand{\familydefault}{\sfdefault} % switch to using sans-serif for everything except mathematics
```

### Colors
- [Page 8 of "A very minimal introduction to TikZ"](http://cremeronline.com/LaTeX/minimaltikz.pdf)
  
  It shows pre-defined colors: `black, blue, brown, cyan, darkgray, gray, green, lightgray, lime, magenta, olive, orange, pink, purple, red, teal, violet, white, yellow`.
- [LaTeX Color Definition](http://latexcolor.com/)

  It lists a collection of color definitions like `\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}`.
- [LaTeX/Colors @ wiki](https://en.wikibooks.org/wiki/LaTeX/Colors)
  
  It gives pre-defined colors and shows how to define colors. It also mentions other packages like `color` and `xcolor`.

- [Lighten colors](http://tex.stackexchange.com/a/48663/23098)
  Using the `xcolor` package: `red!60`

### Hyperlinks and URLs
- [How to change the color of `\href` links](http://tex.stackexchange.com/a/13424/23098)
```
\definecolor{links}{HTML}{2A1B81}
\hypersetup{colorlinks,linkcolor=,urlcolor=links}
% then in body
\href{http://tex.stackexchange.com/questions/13423/how-to-color-href-links-in-beamer}{Your question}
```

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

- [subcaption vs. subfig: Best package for referencing a subfigure](http://tex.stackexchange.com/q/13625/23098)

`Using subcaption > subfig > subfigure`
- [use includegraphics with relative path](http://tex.stackexchange.com/a/172327/23098)

```
\usepackage{graphicx} % in preamble
\graphicspath{{sub/}} % in body
```

- [Rotate figures](http://tex.stackexchange.com/a/120156/23098)

```
\includegraphics[width = 6.0in, angle = 90]{file}; % not rotate = 90
```

#### [`subcaption`](http://texdoc.net/texmf-dist/doc/latex/caption/subcaption.pdf)

- [`\usepackage{graphicx, subcaption}`](https://github.com/hengxin/algorithm-ta-tutorial/blob/master/algorithm-tutorial-graph-decomposition-2016-05-19/sections/dfs-bfs.tex)

```
  \begin{figure}
    \begin{subfigure}{0.50\linewidth}
	    \centering
	    \includegraphics[width=0.50\textwidth]{<figure>}
	    \caption{DFS on directed graph.}
    \end{subfigure}%
    \begin{subfigure}{0.50\linewidth}
	    \centering
	    \includegraphics[width=0.50\textwidth]{<figure>}
	    \caption{DFS on undirected graph.}
      \end{subfigure}

    \begin{subfigure}{0.50\linewidth}
	    \centering
	    \includegraphics[width=0.50\textwidth]{<figure>}
	    \caption{BFS on directed graph.}
      \end{subfigure}%
    \begin{subfigure}{0.50\linewidth}
	    \centering
	    \includegraphics[width=0.60\textwidth]{<figure>}
	    \caption{BFS on undirected graph.}
    \end{subfigure}
  \caption{The caption.}
  \end{figure}
```

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

#### package `xcolor`

- [Table cell color](http://tex.stackexchange.com/a/50351/23098)

```
\usepackage[table]{xcolor}% http://ctan.org/pkg/xcolor
text & \cellcolor{blue!25}text & text \\
```

- [Coloring multi-row tables in LaTeX](http://texblog.org/2014/05/19/coloring-multi-row-tables-in-latex/)

```
\rowcolor{}, 
\columncolor{}
```

#### package `multirow`

- [Vertical Alignment in multirow using cells with more than one lines](http://tex.stackexchange.com/a/66599/23098)

Adjust the alignment manually using the fixup-parameter `[1em]`: 

```
% \multirow{nrows}[bigstruts]{width}[fixup]{text}
\multirow{-10}{\*}[1em]{\cellcolor{yellow}\begin{sideways}TEST\end{sideways}}
```

- [Create a table with two parts with different tabular features](http://tex.stackexchange.com/a/26354/23098)

Within a table environment, you can use different tabular environments, 
of different types and with a different number of columns. 

```
\begin{table}
\centering
\caption{An interesting table}
	\subcaption*{Panel A: Some stuff}
	\begin{tabular}{lcr}
	First name & Last name  & Product \\
	Bubba & Gump & Shrimp \\
	Steve & Jobs & Happiness
	\end{tabular}

	\bigskip

	\subcaption*{Panel B: Other stuff}
	\begin{tabular}{ll}
	School & State \\
	Harvard & MA \\
	Yale & CT \\
	Brown & RI
	\end{tabular}
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

## Algorithms

### [Footnote in algorithm](http://tex.stackexchange.com/a/18444/23098)

Using `footnotemark` and `footnotetext`.

### Package `listings`

- Usage of listings

```
% in preamble
\lstdefinestyle{code}{
  language = Java,
  basicstyle = \ttfamily\footnotesize,
  captionpos = t,
  mathescape = true,
  showstringspaces = false,
  keywordstyle = \color{blue}\bfseries,
  commentstyle = \color{teal},
  stringstyle = \color{green}\bfseries,
  numbers = left,
  numberstyle = \tiny,
  upquote = true, 
  frame = shadowbox,
  breaklines = true
}

% in document
\begin{lstlisting}[style = code, caption = {Prim's algorithm.}]
$X = \emptyset$
$S = \set{s}$    // pick any $s \in V$
$R = V \setminus S$
while $R \neq \emptyset$
  $e = (u,v) \gets$ a lightest edge across $(S, R)$ 
  $X \gets X \cup \set{e}$
  $S \gets S \cup \set{u} \quad R \gets R \setminus \set{v}$
\end{lstlisting}
```

- [How to use mathematical symbols in listing?](http://tex.stackexchange.com/a/63731/23098)

```
\begin{lstlisting}[mathescape=true]
  if foo
  list= { $S_1,S_2,S_3$ }
\end{lstlisting}
```

OR,

```
\begin{lstlisting}[escapeinside={(\*}{\*)}]
  if foo
  list= { (\*$S_1,S_2,S_3$\*) }
\end{lstlisting}
```

## Resources

### Packages

### Tools
- [Tables Generator](http://www.tablesgenerator.com/)

  It is for LaTeX tables, HTML tables, Text tables, Markdown tables, and MediaWiki tables.
- [Excel-to-LATEX – Convert Excel spreadsheets to LATEX tables](https://www.ctan.org/pkg/excel2latex?lang=en)

  This Excel-To-LATEX converter exports the current selection as a LATEX file 
which can be included via the \input command in an existing LATEX document.
Nearly all formatting is supported (bold, italic, border lines, multicolumn cells, ...). Works with Excel up to Excel 2010.


## Miscellaneous

- [\rule{0.5\textwidth}{.4pt}](http://tex.stackexchange.com/a/128640/23098): horizontal line
