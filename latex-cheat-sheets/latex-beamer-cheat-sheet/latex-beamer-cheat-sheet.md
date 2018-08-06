# LaTeX Beamer Cheat Sheet

## Documents and Tutorials
- [Beamer User Guide](http://tug.ctan.org/macros/latex/contrib/beamer/doc/beameruserguide.pdf)

## Gallery of Beamer Themes and Templates

- [Beamer Theme Matrix](https://www.hartwork.org/beamer-theme-matrix/)
- [Beamer theme gallery](http://deic.uab.es/~iblanes/beamer_gallery/)
- [ShareLaTeX | Templates | Presentations](https://www.sharelatex.com/templates/presentations)
- [Overleaf | Templates | Presentations](https://www.overleaf.com/latex/templates/tagged/presentation#.VylqI2F96V4)
- [Metropolis Theme: matze/mtheme@github](https://github.com/matze/mtheme)

## Beamer Appearance
- [BEAMER appearance cheat sheet](http://www.cpt.univ-mrs.fr/~masson/latex/Beamer-appearance-cheat-sheet.pdf)

### beamertemplate
- [Change bullet style / formatting in Beamer](http://tex.stackexchange.com/a/11170/23098)
- [Different styles of bullets of enumerate](https://tex.stackexchange.com/q/68347/23098)

There are four predefined styles: `ball`, `circle`, `square` and `default`:

```
\setbeamertemplate{itemize items}[default]
\setbeamertemplate{enumerate items}[default]
```

Appropriately redefining some other templates you can change also the colors (and fonts):

```
\setbeamertemplate{enumerate items}[square]
\setbeamercolor{item projected}{bg=green!70!black,fg=blue}

\setbeamercolor{enumerate subitem}{fg=red!80!black}
\setbeamertemplate{enumerate items}[default]
```


### beamer font

- [How do I set the default beamer font to Computer Modern serif?](http://tex.stackexchange.com/a/57384/23098)

```
\usefonttheme{serif} % described on p. 194 of the beamer manual.

\usefonttheme[onlymath]{serif}
```

- [Define a separate font for slide titles in Beamer](http://tex.stackexchange.com/a/130886/23098)

```
\setbeamerfont{title}{family=\fontfamily{cyklop}\selectfont}
\setbeamerfont{frametitle}{family=\fontfamily{cyklop}\selectfont}
\setbeamerfont{framesubtitle}{family=\fontfamily{cyklop}\selectfont}
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

- [How to change the color of a block?](http://tex.stackexchange.com/a/33232/23098)

```
\setbeamercolor{block title}{bg=red!30,fg=black}
```

## Beamer Document Structure

- [how to include existing pdf slides into my beamer?](http://tex.stackexchange.com/a/57455/23098)

```
\usepackage{docmute}
\makeatletter
\newcommand*{\loadpresentation}[1]{{\beamer@inlecturefalse\input{#1}}}
\makeatother

\loadpresentation{filea.tex}
\againframe{myframe} % labeled framed in filea.tex
```

- [Import tikz overlay files]

```
\begin{center}
  \resizebox{0.75\textwidth}{!}{\input{tikz/katomicity-trace-not12atomic}}
\end{center}
```


```
\usepackage[export]{adjustbox}
\newcommand{\importikznocaption}[3]{% #1: width, #2: height, #3: tex
\begin{figure}[h!]
    \centering
    \begin{adjustbox}{max totalsize = {#1}{#2}, center}
      \input{#3}
    \end{adjustbox}
  \end{figure}
}
```



- [How to position images in Beamer absolutely](https://bryanwweber.com/writing/personal/2014/09/02/how-to-position-images-in-beamer-absolutely/)

```
\tikz[remember picture, overlay] \node[anchor=center] at (current page.center) {\includegraphics{foo}};
```

Compile twice to have the picture placed at exactly the center of the slide. 
The `anchors` can be changed to move the picture around, and further adjustments can be made by using the `calc` library.

```
\usetikzlibrary{calc}

\tikz[remember picture, overlay] \node[anchor=center] at ($(current page.center)-(1,0))$) {\includegraphics{foo}};
```

### Title Page

- [Adding a log in title page](http://tex.stackexchange.com/a/21370/23098)

```
% Its position is dependent on, i.e. defined by, the used theme.
\titlegraphic{\includegraphics[height = 1.3cm]{figures/nju-logo-purple.png}}
```

*Note:* The following approach does not work for me.

```
\institute{Foo Research Institution\\[\medskipamount]
      \includegraphics[width=\textwidth,height=.5\textheight]{imgfilename}%
 }
```

- [How can I add more than one logo to my beamer presentation?](http://tex.stackexchange.com/a/18413/23098)

```
\titlegraphic{\includegraphics[height = 1.3cm]{figures/nju-logo-purple.png}~\includegraphics[height = 1.3cm]{figures/cs-logo.jpg}}
```

- [Adding log in all pages](http://tex.stackexchange.com/a/22149/23098)

```
\logo{\includegraphics[scale=0.618]{image-ubication}}
```

- [Beamer CambridgeUS - How to add logo above the title](http://tex.stackexchange.com/a/114092/23098)

CambridgeUS uses the default title page template which inserts the title graphic at the end; 
you can redefine the template to include it before the title.

### Headers and Footers


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

- [How can I make an enumerate list start at something other than 1](https://tex.stackexchange.com/q/142/23098)

```
\begin{enumerate}
  \setcounter{enumi}{4}
  \item fifth element
\end{enumerate}
```

- [Reverse numbering on the enumerate environment](http://tex.stackexchange.com/a/113704/23098)

```
\usepackage{etaremune}
\begin{etaremune}
  \item Last things first
  \item \ldots
  \item First things last
\end{etaremune}
```

- [Changing left margin in itemize environment of beamer class](http://tex.stackexchange.com/a/5954/23098)

The beamer class uses the same default lengths for the left margin 
like the base classes: \leftmargini, \leftmarginii etc. So you could adjust those lenghts.

```
\setlength{\leftmargini}{2pt}
\setlength{\leftmarginii}{4pt}
```

- [Reduce indent in description in beamer](http://tex.stackexchange.com/a/240441/23098)

```
\setbeamersize{description width=0.57cm}

\begin{description}
  \item[FooBarBazZot] - foo bar \\ baz zot
\end{description}
```

- [Right align a description list](http://tex.stackexchange.com/a/95977/23098)

With beamer package, the `description` environment can use an optional argument: 
a text to fix the maximum width of terms (cf. p. 113 of beamer guide v3.26).

```
\begin{description}[Other description]
  \item[Name] Joel Spolsky
  \item[Address] Some address  
  \item[Other description] Some description
\end{description}
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
- [Beamer - Using `\pause` within `lstlisting`](https://tex.stackexchange.com/a/58926/23098)

```
\usepackage{listings}

\lstset{basicstyle=\small\ttfamily,
  numbers=left,
  escapeinside=||  % adding this
}

\begin{lstlisting}
  line1 |\pause|
  line2 |\pause|
  line3
\end{lstlisting}
```

- [Uncover `lstlisting` on a particular slide using `\onslide` or `\uncover`](https://tex.stackexchange.com/a/271249/23098)

```
\begin{overlayarea}{\linewidth}{3cm}
  \onslide<1->{Hi}
  \begin{onlyenv}<2->  // using `onlyenv`
  \begin{lstlisting} 
  int i = 0; 
  \end{lstlisting}
  \end{onlyenv}
\end{overlayarea}  
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

## Bibliography



## Tools

- [wiki2beamer](http://wiki2beamer.sourceforge.net/)

  See an example [here](http://wiki2beamer.sourceforge.net/wiki2beamer-example.pdf).