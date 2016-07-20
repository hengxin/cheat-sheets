# LaTeX Beamer Cheat Sheet

## Documents and Tutorials
- [Beamer User Guide](http://tug.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf)

## Beamer Themes and Templates

### Gallery
- [Beamer Theme Matrix](https://www.hartwork.org/beamer-theme-matrix/)
- [Beamer theme gallery](http://deic.uab.es/~iblanes/beamer_gallery/)
- [ShareLaTeX | Templates | Presentations](https://www.sharelatex.com/templates/presentations)
- [Overleaf | Templates | Presentations](https://www.overleaf.com/latex/templates/tagged/presentation#.VylqI2F96V4)

### Beamer Appearance
- [BEAMER appearance cheat sheet](http://www.cpt.univ-mrs.fr/~masson/latex/Beamer-appearance-cheat-sheet.pdf)
- [Change bullet style / formatting in Beamer](http://tex.stackexchange.com/a/11170/23098)
```
\setbeamertemplate{itemize items}[default]
\setbeamertemplate{enumerate items}[default]
```
- [Changing frame margins in Beamer Theme](http://tex.stackexchange.com/a/75983/23098)
```
\setbeamersize{text margin left = 1em, text margin right = 1em}
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
