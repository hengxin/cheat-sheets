# LaTeX Figures Cheat Sheet

## Packages for Figure

- [subcaption vs. subfig: Best package for referencing a subfigure](http://tex.stackexchange.com/q/13625/23098)

> Using subcaption > subfig > subfigure

***Important Note:***

The package `subfig` is incompatible with `subcaption`.
A [conflict](https://tex.stackexchange.com/q/213273/23098) 
may result in a hard-to-debug [error](https://tex.stackexchange.com/a/213279/23098):
`Undefined control sequence at: "\begin{document}"`.

- [use includegraphics with relative path](http://tex.stackexchange.com/a/172327/23098)

```
\usepackage{graphicx} % in preamble
\graphicspath{{sub/}} % in body
```

## Subfigures

### [`subcaption`](http://texdoc.net/texmf-dist/doc/latex/caption/subcaption.pdf)

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

- [Split subfigures over multiple pages](https://tex.stackexchange.com/a/278748/23098)

```
\begin{figure}
  ...
\end{figure}
\begin{figure}[htb]\ContinuedFloat
  ...
\end{figure}
```

### [`subfig.sty`]()
Used in [`IEEEtran.cls`](https://www.ctan.org/pkg/ieeetran)

```
\begin{figure*}[!t]
  \centering
  \subfloat[Case I]{\includegraphics[width=2.5in]{box}
  \label{fig_first_case}}
  \hfil
  \subfloat[Case II]{\includegraphics[width=2.5in]{box}
  \label{fig_second_case}}
  \caption{Simulation results for the network.}
  \label{fig_sim}
\end{figure*}
```

## Figure Styles

- [How can I reduce padding after figure?](https://tex.stackexchange.com/a/23315/23098)

```
\setlength{\belowcaptionskip}{-10pt}

For further customizations I recommend using the `caption` package. 
It provides a lot of features and is very well documented.
```

[You can modify the following lengths](https://tex.stackexchange.com/a/23316/23098), which affect all floats:

```
- `\floatsep`: space left between floats (12.0pt plus 2.0pt minus 2.0pt).
- `\textfloatsep`: space between last top float or first bottom float and the text (20.0pt plus 2.0pt minus 4.0pt).
- `\intextsep`: space left on top and bottom of an in-text float (12.0pt plus 2.0pt minus 2.0pt).
- `\dbltextfloatsep` is \textfloatsep for 2 column output (20.0pt plus 2.0pt minus 4.0pt).
- `\dblfloatsep` is \floatsep for 2 column output (12.0pt plus 2.0pt minus 2.0pt).
- `\abovecaptionskip`: space above caption (10.0pt).
- `\belowcaptionskip`: space below caption (0.0pt).
```

- [Rotate figures](http://tex.stackexchange.com/a/120156/23098)

```
\includegraphics[width = 6.0in, angle = 90]{file}; % not rotate = 90
```

## Figure Labeling and Figure Numbering

- [Change figure numbering for appendix](https://tex.stackexchange.com/a/85778/23098)

```
\setcounter{figure}{0}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}} % for `article` documentclass 
\renewcommand\thefigure{\thesection.\arabic{figure}}
```

## Figure Positioning

- [Two figures side by side](https://tex.stackexchange.com/a/5770/23098)

Using `minipage`:

```
\begin{figure}
    \centering
    \begin{minipage}{0.45\textwidth}
        \centering
        \includegraphics[width=0.9\textwidth]{example-image-a} % first figure itself
        \caption{first figure}
    \end{minipage}\hfill
    \begin{minipage}{0.45\textwidth}
        \centering
        \includegraphics[width=0.9\textwidth]{example-image-b} % second figure itself
        \caption{second figure}
    \end{minipage}
\end{figure}
```
