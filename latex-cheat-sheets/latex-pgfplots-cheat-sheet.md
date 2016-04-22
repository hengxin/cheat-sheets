# LaTeX PGFPlots Cheat Sheet

## `\begin{axis}`

### axis labels
  - [Position of axis label](http://tex.stackexchange.com/a/122749/23098)
  ```
  every axis x label/.style={ 
    at={(current axis.right of origin)},
    right=2mm,
    rotate=45,
    anchor=east,
    font=\footnotesize
  },
  every axis y label/.style={at={(current axis.north west)},above=2mm},
  ```

## `\addplot[]{}`
- [Plot marks on every n-th point](http://tex.stackexchange.com/a/239707/23098)

  ```
  \addplot+[scatter,samples=100, mark repeat=5,mark phase=7] { sin(deg(x)) };
  ```
  
## Ticks
- `xtick=data`
- `xtick={1,3,...,20}`

## Labels (for axis)
- `xticklabels={ label1, label2, label3 }`
- `x tick label style={ rotate=45, anchor=east, font=\scriptsize }`

## Labels (for data points)

### `pin`
- [Label data points using `pin`](http://tex.stackexchange.com/a/191398/23098)
  ```
  \addplot table  {\datatable}
  node[pos=0.0, pin=right:``first point'']{} 
  node[pos=1.0, pin=left:``last point'']{};
  ```

### `node near coord`
- [Lable data points using `node near coord`](http://tex.stackexchange.com/a/191439/23098)
  ```
  \begin{axis}[
    every node near coord/.append style={
    font=\scriptsize,
    anchor=north
    },
  ]
  \addplot+[nodes near coords, mark=pentagon] table[x=xtick, y=median, meta=median] {dataFile};
  ```

## Legends

- `legend entries={ }`

### `\addlegendimage{}` and `\addlegendentry{}`
  - [Adding legend title](http://tex.stackexchange.com/a/2332/23098)

    ```
    \addlegendimage{empty legend}
    \addplot {sqrt(x)}; 

    \addlegendentry{\hspace{-.6cm}\textbf{A title}}
    \addlegendentry{$\sqrt{x}$}
    ```
  
- [`reverse legend`](http://tex.stackexchange.com/a/136261/23098)
  - using with `\addlegendentry{}`; have trouble with `legend entries={}` (some legends are dropped?)

- `legend style = { }`

### [`legend pos`](http://tex.stackexchange.com/a/227101/23098)
  - `[legend pos=south east] % or north west, ... ,outer north east`
  - `legend style={at={(0.5,-0.1)},anchor=north}`
    - `<x>` and `<y>` are in terms of the rel axis cs (ranges from 0 to 1 over the width and height of the axis box).

## Boxplots

- [boxplot style options](http://tex.stackexchange.com/a/181011/23098)
  ```
  \addplot+[
    every box/.style={very thick,dashed,draw=black,fill=yellow},
    every whisker/.style={red,ultra thick},
    every median/.style={densely dotted,cyan,ultra thick},
  ]
```

- [Using named nodes as pgfplots coordinates](http://tex.stackexchange.com/a/257493/23098)
  ```
  \addplot+[boxplot] table[y=A] \datatable coordinate (A) at (boxplot box cs: \boxplotvalue{average}, 0.5);
  ```

- [Boxplots in groups](http://tex.stackexchange.com/a/183856/23098)
  Using `draw position`:
  ```
  draw position={1/3 + floor(\plotnumofactualtype/2) + 1/3*mod(\plotnumofactualtype,2)},
  ```
