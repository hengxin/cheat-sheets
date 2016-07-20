# LaTeX TikZ Cheat Sheet

## Arrows

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

