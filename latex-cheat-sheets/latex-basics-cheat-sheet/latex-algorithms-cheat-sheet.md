# LaTeX Algorithms Cheat Sheet

## [Footnote in algorithm](http://tex.stackexchange.com/a/18444/23098)

Using `footnotemark` and `footnotetext`.

## Package `listings`

- [现在版本的 ctex 包（或 ctex 文档类）与 listings 包之间是否有冲突？](https://www.zhihu.com/question/63306149/answer/207570866)

Yes. Here is a workaround:

```
\ExplSyntaxOn
\bool_new:N \l__xeCJK_listings_letter_bool
\ExplSyntaxOff
\usepackage{lstlisting}
```

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
  breaklines = true,
  morekeywords = {repeat, until},
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

- [C style lstlisting]()

```
% begin: only for xelatex in texlive 2016
\ExplSyntaxOn
\bool_new:N \l__xeCJK_listings_letter_bool
\ExplSyntaxOff
% end: only for xelatex in texlive 2016

\usepackage{listings}

\definecolor{bgcolor}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{CStyle}{
    language = C,
    basicstyle = \ttfamily\bfseries,
    backgroundcolor = \color{bgcolor},   
    keywordstyle = \color{blue},
    stringstyle = \color{red},
    commentstyle = \color{cyan},
    breakatwhitespace = false,
    breaklines = true,                 
    mathescape = true,
    morekeywords = {repeat, until},
    showspaces = false,                
    showstringspaces = false,
    showtabs = false,                  
}


\begin{lstlisting}[style = Cstyle]
LinkedList list
\end{lstlisting}
```

- [Extend a language with additional keywords?](https://tex.stackexchange.com/a/29917/23098)

```
\lstset{language=Python}

\lstset{
 morekeywords={super}
}
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

- [Center Latex lstlisting](https://stackoverflow.com/a/19323979/1833118)

```
\lstset{
  xleftmargin = 0.2\textwidth,
  xrightmargin = 0.2\textwidth
}
```

## Package `algorithmicx`

```
\usepackage{algorithm}
\usepackage{algpseudocode}  % [noend]
```

### Comment

- [Properly indent comments with no line-numbering in `algorithmicx`](https://tex.stackexchange.com/a/153125/23098)

```
\makeatletter
\algnewcommand{\LineComment}[1]{\Statex \hskip\ALG@thistlm \(\triangleright\) #1}
\makeatother

\LineComment{no need to explore more. we just want to stop over here.}
```

- [How to indent long comment continuation in the `algorithmicx` pseudocode](https://tex.stackexchange.com/a/169608/23098)

```
\makeatletter
\newlength{\trianglerightwidth}
\settowidth{\trianglerightwidth}{$\triangleright$~}
\algnewcommand{\LineComment}[1]{\Statex \hskip\ALG@thistlm $\triangleright$ #1}
\algnewcommand{\LineCommentCont}[1]{\Statex \hskip\ALG@thistlm%
  \parbox[t]{\dimexpr\linewidth-\ALG@thistlm}{\hangindent=\trianglerightwidth \hangafter=1 \strut$\triangleright$ #1\strut}}
\makeatother


\LineComment{no need to explore more. we just want to stop over here. no need to explore more. we just want to stop over here. no need to explore more. we just want to stop over here. }

\LineCommentCont{no need to explore more. we just want to stop over here. no  to explore more. we just want to stop over here. no need to explore more. we just want to stop over here.}
```

### Procedure

- [Functions with no parameters in `algorithmicx`](https://tex.stackexchange.com/a/68257/23098)

```
\Procedure{Foo}{\null}

\Call{Foo}{\null}
```
