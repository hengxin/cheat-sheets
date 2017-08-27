# LaTeX Algorithms Cheat Sheet

## [Footnote in algorithm](http://tex.stackexchange.com/a/18444/23098)

Using `footnotemark` and `footnotetext`.

## Package `listings`

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

