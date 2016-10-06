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
- [Change pin node style in pgfplots](http://tex.stackexchange.com/a/42302/23098)

  ```
  \tikzset{every pin edge/.style={draw=red, ultra thick}}
  \node [coordinate, pin={[ultra thick, draw=blue, fill=yellow]foobar}] at (0,0) {};
  ```

  ```
  \node [coordinate, pin={[ultra thick, draw=blue, fill=yellow,pin edge={red, ultra thick}]foobar}] at (0,0) {};
  ```

### `node near coords`
- [Lable data points using `node near coords`](http://tex.stackexchange.com/a/191439/23098)

  ```
  \begin{axis}[
    every node near coord/.append style={
    font=\scriptsize,
    anchor=north
    },
  ]
  \addplot+[nodes near coords, mark=pentagon] table[x=xtick, y=median, meta=median] {dataFile};
  ```

- [Shifting in `node near coords`](http://tex.stackexchange.com/a/177449/23098)

  ```
  every node near coord/.append style={yshift=-0.5cm}   % yshift can be adjusted
  ```

- [`nodes near coords` with logarithmic axis: Wrong values](http://tex.stackexchange.com/a/142967/23098)

  ```
  point meta = rawx % or, point meta = rawy
  ```
- [`nodes near coords`pgfplots how to nicely place nodes](http://tex.stackexchange.com/a/58870/23098)

  ```
  nodes near coords,
  every node near coord/.append style = {
  font=\scriptsize,
  /pgf/number format/precision=3, % set the precision
  anchor=-\coordindex*10 % angle: 0, -10, -20, ...
  }
  ```

- [Define node/pins near some coords using `nodes near coords`?](http://tex.stackexchange.com/a/191439/23098)

  ```
  nodes near some coords={1,3}
  ```

## Import and Export Data
- [`\pgfplotstableread`]()

```
\pgfplotstableread{longdatafile.dat}{\data}

\addplot [] table [x = xcol, y = ycol] {\data};
```

## Markers

### `mark options = { }`
- [Pgfplots - ugly marks when using dotted or dashed line](http://tex.stackexchange.com/a/185242/23098)

```
\begin{axis}[mark options={solid,...},...]
\end{axis}
```

## Grid

### Draw Grid
- [How to draw (major) grid lines only at specified positions?](http://tex.stackexchange.com/a/306095/23098)

  ```
  \begin{axis}[
    xtick={-4,-2,...,4},
    % place some extra x ticks ...
    extra x ticks={0,2},
    % ... but do not repeat the already existent labels from the "normal" ticks ...
    extra x tick labels={},
    % ... and set the style of the extra ticks to `major'
    extra tick style={
      grid=major,
    },
  ]
  ```

### Grid Styles

- [Enable grids](http://tex.stackexchange.com/a/96837/23098)

  ```
  ymajorgrids % or xmajorgrids
  ```

- [Change the appearance of grids in pgfplots](http://tex.stackexchange.com/a/91223/23098)

  ```
  minor ticks: \pgfplotsset{minor grid style={dashed,red}}
  major ticks: \pgfplotsset{major grid style={dashed, red}}
  both minor and major ticks: \pgfplotsset{grid style={dashed,gray}}
  ```

## Legends

- `legend entries={ }`

  - [Comma in legend in pgfplots](http://tex.stackexchange.com/q/129624/23098)
    - [One solution: `legend entries =  {}{$a, b$}`](http://tex.stackexchange.com/a/129626/23098)
    - [Another solution: `legend entries =  {$a, b$\\$c, d$\\}`](http://tex.stackexchange.com/a/154807/23098): In this case, the last element must be terminated by `\\` as well.
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
