# LaTeX Figures Cheat Sheet

## Figures

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

- [Rotate figures](http://tex.stackexchange.com/a/120156/23098)

```
\includegraphics[width = 6.0in, angle = 90]{file}; % not rotate = 90
```

## [`subcaption`](http://texdoc.net/texmf-dist/doc/latex/caption/subcaption.pdf)

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
