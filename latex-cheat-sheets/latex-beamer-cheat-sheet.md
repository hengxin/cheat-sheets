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

### For Thesis
- [Beamer2Thesis](http://cfiandra.github.io/Beamer2Thesis/)

  With *logos* in the title page.

### For Posters

## Columns

### alignment
`\begin{columns}[t]`

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
- `\begin{frame}[fragile]{frame-name}`
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


## Tools

- [wiki2beamer](http://wiki2beamer.sourceforge.net/)

  See an example [here](http://wiki2beamer.sourceforge.net/wiki2beamer-example.pdf).
