# LaTeX TikZ Cheat Sheet

## Basics

- [Imported into other documentclass]()

```
\usepackage{adjustbox}
% \graphicspath{{tikz-in-beamer/}}

\newcommand{\importtikznocaption}[3]{ % #1: width; #2: height; #3: tikz file
\begin{figure}[h!]
  \centering
  \begin{adjustbox}{max totalsize = {#1}{#2}, center}
    \input{#3}
  \end{adjustbox}
\end{figure}
}

\importtikznocaption{1.00\textwidth}{1.00\textheight}{tikz-in-beamer/consistency-model-distributed-system-history-beamer}
```

- [Transparent node with opaque text](http://tex.stackexchange.com/a/42408/23098)

After setting the `opacity`, you have to reset the `text opacity=1` to get opaque text. 
The `opacity` key is a shorthand for setting the `draw opacity` and the `fill opacity` at the same time, 
and the `fill opacity` in turn automatically applies to the `text opacity`.

```
\node at(2,0) [right,fill=green,opacity=.2,text opacity=1] {Node};
```

- [Get arbitrary font size; How to get larger fonts than \Huge in nodes with tikz](http://tex.stackexchange.com/a/96573/23098)

```
\usepackage{lmodern}
\draw (2,1.5) node[font=\fontsize{52}{58}\sffamily\bfseries]{TEXT};
```

- [Increasing math mode font size in tikz picture](http://tex.stackexchange.com/a/215813/23098)

```
\draw (1,0) node[font=\fontsize{60}{60}\selectfont]{$\pi$} circle (1);
```

## Styles for `tikzpicture`

- [TikZ add frame to a picture](http://tex.stackexchange.com/a/12643/23098)

```
\begin{tikzpicture}[framed]
  \draw (0,0) circle (2);
  \draw (0,0) rectangle (3,2);
\end{tikzpicture}

\usetikzlibrary{backgrounds}
\begin{tikzpicture}[framed,
  background rectangle/.style={double, ultra thick, draw=red, top color=blue}]
  \draw (0,0) circle (2);
  \draw (0,0) rectangle (3,2);
\end{tikzpicture}
```

## TikZ Styles (`.style`)

- [Tikz /.style with one parameter](http://tex.stackexchange.com/q/119453/23098)

```
declaration: qar/.style={draw,rectangle,fill=#1}

usage: \node [qar={blue}] {};
```

- [Tikz /.style with (two) parameters](http://tex.stackexchange.com/q/21395/23098)

```
transformer/.style 2 args={draw, cylinder, gray!80, rotate=90, minimum height=#1, minimum width=#2}]
\node [transformer={2.3cm}{1cm}] () at (0,0.6) {};
```

- [Set a default value for an argument in a TikZ style](http://tex.stackexchange.com/a/119458/23098)

```
qar/.style={
    draw,
    rectangle,
    fill=#1
},
qar/.default=red % using the `.default` handler

qar2/.style 2 args={
    rectangle,
    draw=#1, thick,
    fill=#2
},
qar2/.default={blue}{yellow}
```

- [How to set a default parameter for all edges](http://tex.stackexchange.com/a/129071/23098)

```
\path[->,every edge/.append style = {double}] (0,0) edge[bend left] (1,1) (1,3)edge[loop above] ();
\path[->] (0,3) edge[bend left] (1,2) edge[loop above] ();
```

## Arrows (`\usetikzlibrary{arrows, arrows.meta}`)

- [Double-headed arrows](http://tex.stackexchange.com/a/120809/23098)

```
\draw[>=triangle 90, ->>] (0,0) -- (2,0);  % set `>=` first
```

- [Adjusting the size of an arrow](http://tex.stackexchange.com/a/150739/23098)

```
\draw[>={Latex[length = 5pt, width = 2pt]}, ->] (0,0) -- (2,0);
```

- [Double arrows](http://tex.stackexchange.com/a/230210/23098)

```
\usetikzlibrary{arrows.meta}
\draw[-Implies,line width=1pt,double distance=1pt] (0,0) -- (1,1);
```

- [How to Draw Intervals](http://tex.stackexchange.com/a/94249/23098)

```
\draw [o-o] (0,0) -- +(1,0);
\draw [o-*] (0,0) -- +(1,0);
\draw [o->] (0,0) -- +(1,0);
```

- [Text above and under an arrow in a tikz picture](https://tex.stackexchange.com/a/270376/23098)

```
\draw [] (from-node) to 
	node () [below] {Below}
	node () [above] {Above}
	(to-node);
```

- [Create loop arrow in TikZ](https://tex.stackexchange.com/a/367009/23098)

Using `out=, in=` and `looseness`:

```
\draw [] (node) to [out = -30, in = 30, looseness = 5] (node);
```

## Background Library

## Calc Library `calc`

- ($(node1.center)!0.5!(node2.center)$)

- [Perpendicular line to two-points-line given the length](https://tex.stackexchange.com/a/67397/23098)

```
\usetikzlibrary{calc}

\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1}]

\node [dot=A] at (0,0) {};
\node [dot=B] at (3,1) {};
\draw (A) -- (B);

\draw (B) -- ($(B)!1cm!-90:(A)$);
\end{tikzpicture}
```

## Decorations Library

- [Curved waved lines (Snakes) with TikZ](http://tex.stackexchange.com/a/88951/23098)

The library `snakes` has been superseded by `decorations`.

```
\usetikzlibrary{decorations.pathmorphing}
\tikzset{snake it/.style={decorate, decoration=snake}}
\draw[draw=blue, snake it] (2,0) arc (0:180:2cm);
```

- [Text along circular path](http://tex.stackexchange.com/a/103918/23098)

```
\usetikzlibrary{decorations.text} % decorations.text for the text along path feature
\draw [double distance=10mm,
       double=gray,
       draw opacity=0.3,
       rotate=120,
       postaction={
            decorate,
            decoration={
                  raise=-1ex,
                  text along path, 
                  reverse path,
                  text align={fit to path stretching spaces},
                  text={|\ttfamily\huge\color{white}|Text\space label\space 1 Unknown Text\space Label\space 2 \space}
            }
       }
    ] (0,0) circle (4.4cm);
```

- [TikZ: Line with large dots](https://tex.stackexchange.com/a/52849/23098)

```
\usetikzlibrary{decorations.markings}

\begin{tikzpicture}[decoration={markings,
  mark=between positions 0 and 1 step 6pt
  with { \draw [fill] (0,0) circle [radius=2pt];}}]
\path[postaction={decorate}] (0,0) to (4,0);
\end{tikzpicture}
```

OR,

```
\usetikzlibrary{decorations.shapes}

\tikzset{decorate sep/.style 2 args=
{decorate,decoration={shape backgrounds,shape=circle,shape size=#1,shape sep=#2}}}

\begin{tikzpicture}
\draw[decorate sep={2mm}{4mm},fill] (0,0) -- (4,0);
\draw[decorate sep={2mm}{6mm},fill] (0,1) -- (4,1);
\draw[decorate sep={1mm}{4mm},fill] (0,2) -- (4,2);
\end{tikzpicture}
```

## Labels

- [How to place label in middle of line (above and below) with TikZ](http://tex.stackexchange.com/a/96938/23098)

```
\begin{tikzpicture}
  \draw (-2,0) -- node[below] {a} node[above] {b} ++(4,0);
\end{tikzpicture}
```

```
\begin{tikzpicture}
  \draw (-2,0) -- node[below] {a} ++(2,0) -- node[above] {b} ++(2,0);
\end{tikzpicture}
```

- [Label distance](http://tex.stackexchange.com/a/260756/23098)

```
\draw (a) to node[above = 5pt, bend right] {label text} (b);
```

- [TikZ set node label position more precisely](https://tex.stackexchange.com/a/58880/23098)

```
\node [label={[label distance=1cm]30:label}] {Node};
```

## Node
- [Itemize list inside a tikzpicture node](http://tex.stackexchange.com/a/220824/23098)

```
\usepackage{varwidth}
\node at (0, 0) {\framebox{\Large
    {\begin{varwidth}{\linewidth}\begin{itemize}
        \item item1
        \item item2
    \end{itemize}\end{varwidth}}
}};
```

## Patterns Library (`\usetikzlibrary{patterns}`)

- [Pattern color differs from normal color?](http://tex.stackexchange.com/a/40888/23098)

```
\draw [color = gray, pattern color = gray, pattern = north east lines] (t1) rectangle (t2);
```

- [Density of patterns (1)](http://tex.stackexchange.com/a/119711/23098)
- [Density of patterns (2)](http://tex.stackexchange.com/a/29815/23098)

## Positioning (`\usetikzlibrary{positioning}`)
- [Align nodes to the left](http://tex.stackexchange.com/a/13673/23098)
```
\node [draw,below = of A.west, anchor = west] (B) {B};
```

## Shapes

- [Shapes: circle, ellipse, circle split, diamond, polygon, sign, star](http://www.texample.net/tikz/examples/node-shapes/)

```
\node[rectangle] {Rectangle}; 
\node[circle] {Circle};
\node[ellipse] {Ellipse};
\node[circle split] {Circle \nodepart{lower} split};
\node[forbidden sign,text width=4em, text centered]{Forbidden sign};
\node[diamond] {Diamond};
\node[cross out] {Cross out};
\node[strike out] {Strike out};
\node[regular polygon,regular polygon sides=5] {$n=5$};
\node[regular polygon,regular polygon sides=7] {$n=7$};
\node[regular polygon,regular polygon sides=9] {$n=9$};
\node[star,star points=4] {$p=4$};
\node[star,star points=7,star point ratio=0.8] {$p=7$};
\node[star,star points=9] {$p=9$};
```

- [Size of rectangle]()
  - `minimum size = <dimen>`: to get a square
  - `minimum width = <dimen>` + `minimum height = <dimen>`

## To Path Library

`\usetikzlibrary{topaths}`

### straight line

```
\path[->] (a) edge[tree] (b)
	(b) edge[tree] (c)
	(c) edge[tree] (d);
```

- [Draw arrows between nodes with tikz](https://tex.stackexchange.com/a/251656/23098)

```
\draw [->] (A) edge (B) (B) edge (C) (C) edge (D);
```

### curve

- `\path[->] (c) edge[back, bend right] (e);`
- `\draw[bend right = 40] (a) to (b);`: `bend` accepts an [optional `<angle>` value](http://tex.stackexchange.com/a/228730/23098) 
	to simultaneously set the `in` and `out` keys symmetrically

### edges

- [circle connection bar](http://tex.stackexchange.com/q/141308/23098)

```
\usetikzlibrary{mindmap}

\path (a) to[circle connection bar] (b);
```

## Fun and Miscellaneous
- [Nice scientific pictures show off](http://tex.stackexchange.com/q/158668/23098)

- [How can I draw an egg using TikZ](http://tex.stackexchange.com/a/74175/23098)
```
\begin{tikzpicture}
    \draw (0,0) 
    .. controls (0,-1.5) and (2,-1.5).. (2,0)
    .. controls (2,2.5) and (0,2.5) .. (0,0);
\end{tikzpicture}
```
