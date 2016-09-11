# LaTeX TikZ Cheat Sheet

## Basics (no need of libraries)
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

## TikZ Styles (`.style`)
- [Tikz /.style with (two) parameters](http://tex.stackexchange.com/q/21395/23098)
```
transformer/.style 2 args={draw, cylinder, gray!80, rotate=90, minimum height=#1, minimum width=#2}]
\node [transformer={2.3cm}{1cm}] () at (0,0.6) {};
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

## Background Library

## Decorations Library
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

### curve
`\path[->] (c) edge[back, bend right] (e);`

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
