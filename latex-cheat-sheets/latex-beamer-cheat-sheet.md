# LaTeX Beamer Cheat Sheet

## Documents and Tutorials
- [Beamer User Guide](http://tug.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf)

## Gallery of Beamer Themes and Templates

- [Beamer Theme Matrix](https://www.hartwork.org/beamer-theme-matrix/)
- [Beamer theme gallery](http://deic.uab.es/~iblanes/beamer_gallery/)
- [ShareLaTeX | Templates | Presentations](https://www.sharelatex.com/templates/presentations)
- [Overleaf | Templates | Presentations](https://www.overleaf.com/latex/templates/tagged/presentation#.VylqI2F96V4)

## Beamer Appearance
- [BEAMER appearance cheat sheet](http://www.cpt.univ-mrs.fr/~masson/latex/Beamer-appearance-cheat-sheet.pdf)

### beamertemplate
- [Change bullet style / formatting in Beamer](http://tex.stackexchange.com/a/11170/23098)
```
\setbeamertemplate{itemize items}[default]
\setbeamertemplate{enumerate items}[default]
```

### beamersize
- [Changing frame margins in Beamer Theme](http://tex.stackexchange.com/a/75983/23098)
```
\setbeamersize{text margin left = 1em, text margin right = 1em}
```

### beamercolor
- [Adding color to the footnote mark in Beamer](http://tex.stackexchange.com/a/6152/23098)
```
\setbeamercolor{footnote}{fg = red}
\setbeamercolor{footnote mark}{fg = red}
```

### For Thesis
- [Beamer2Thesis](http://cfiandra.github.io/Beamer2Thesis/)

  With *logos* in the title page.

### For Posters

## Columns
- `\begin{columns}[t]`: alignment
- [Separate beamer columns with vertical lines](http://tex.stackexchange.com/a/95188/23098)

```
\vrule{}
```

- [Adding horizontal line](http://tex.stackexchange.com/a/209960/23098)

```
\color{red}\rule{\linewidth}{4pt}
```

- [Display the footnote in the bottom of the slide while using `columns`](http://tex.stackexchange.com/a/86651/23098)

```
\begin{columns}
  \column{.5\textwidth}
    Some text for the first column and a test footnote\footnotemark
  \column{.5\textwidth}
    Some text for the second column and a test footnote\footnotemark
\end{columns}
\footnotetext[1]{A test footnote in the first column}
\footnotetext[2]{A test footnote in the second column}
```

```
\begin{columns}
  \column{.5\textwidth}
	Some text for the first column and a test footnote\footnotemark
  \column{.5\textwidth}
	Some text for the second column and a test footnote\footnotemark[1]
\end{columns}
\footnotetext{A test footnote for both columns}
``` 

```
\begin{columns}
  \column{.5\textwidth}
    Some text for the first column and a test footnote\footnote[frame]{A test footnote in the first column}
  \column{.5\textwidth}
	Some text for the second column and a test footnote\footnote[frame]{A test footnote in the second column}
\end{columns}
```

## List: enumerate, itemize, and description
- [Vertical space between items](http://tex.stackexchange.com/a/12374/23098)
  
  `\setlength\itemsep{1em}`
- [Reverse numbering on the enumerate environment](http://tex.stackexchange.com/a/113704/23098)

```
\usepackage{etaremune}
\begin{etaremune}
  \item Last things first
  \item \ldots
  \item First things last
\end{etaremune}
```

## Listings and Algorithms
- `\begin{frame}[fragile]{frame-name} % fragile cannot be ignored`
- [Beamer and algorithm/pseudocode](http://tex.stackexchange.com/a/26544/23098)
```
\usepackage{algorithm2e, algorithmic}
\begin{frame}[fragile]
  \begin{algorithm}[H]
  \begin{algorithmic}[1]
    \FOR{$i=1$ to $N$}
      \STATE $i$
    \ENDFOR
  \end{algorithmic}
  \caption{}
  \label{alg:seq}
\end{algorithm}
```

## Blocks
- [Changing default width of blocks in beamer](http://tex.stackexchange.com/q/12550/23098)
  - [Original block environments with customizable width](http://tex.stackexchange.com/a/12558/23098)

  ```
  \addtobeamertemplate{block begin}{%
    \setlength{\textwidth}{0.9\textwidth}%
  }{}
  
  \addtobeamertemplate{block alerted begin}{%
    \setlength{\textwidth}{0.9\textwidth}%
  }{}
  
  \addtobeamertemplate{block example begin}{%
    \setlength{\textwidth}{0.9\textwidth}%
  }{}
  ```

  - [Define your own block environment with an optional parameter for its width](http://tex.stackexchange.com/a/12551/23098)

  ```
  \newenvironment<>{varblock}[2][.9\textwidth]{%
  \setlength{\textwidth}{#1}
  \begin{actionenv}#3%
    \def\insertblocktitle{#2}%
    \par%
    \usebeamertemplate{block begin}}
  {\par%
    \usebeamertemplate{block end}%
  \end{actionenv}}

  \begin{varblock}[4cm]{New block}
    Variable width, here 4cm
  \end{varblock}
  ```

## Overlay

See the wonderful blog article: [The beamer slide overlay concept](http://www.texdev.net/2014/01/17/the-beamer-slide-overlay-concept/).

- [Auto-incrementing the overlay](http://tex.stackexchange.com/q/67281/23098)

```
\begin{itemize}[<+->]
  \item This is on the first and all following slides
  \item This is on the second and all following slides
\end{itemize}
```

## Layout
- [Absolute position in frame](http://tex.stackexchange.com/a/80496/23098)

```
\usepackage[overlay,absolute]{textpos}
\only<2->{
  \begin{textblock}{5}(6,6) 
    Some more text
  \end{textblock}
}
```

## Tools

- [wiki2beamer](http://wiki2beamer.sourceforge.net/)

  See an example [here](http://wiki2beamer.sourceforge.net/wiki2beamer-example.pdf).
