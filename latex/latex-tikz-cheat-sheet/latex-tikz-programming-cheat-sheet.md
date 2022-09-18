# LaTeX TiKZ Programming Cheat Sheet

## `\def`
- `\def\PHI{-15}`: define a variable

## `\foreach`

- [Index for `\foreach`: /pgf/foreach/count=<macro>from<value>](http://tex.stackexchange.com/a/21558/23098)

```
\foreach \x [count=\xi] in {a,...,e} % `\x` will take the values `a,b,c,d,e`, while `\xi` will take the values `1,2,3,4,5`.

\foreach \x [count=\xi from 3] in {a,...,e} % `\x` will still take the values `a,b,c,d,e`, while `\xi` will now take the values `3,4,5,6,7`.
```

## `pgfmathsetmacro`
- `\pgfmathsetmacro{\PHI}{-15}`
- `\pgfmathsetmacor{\PHI}{cos(60)}`

## `let`

- [Modular arithmetic on node names in TikZ](http://tex.stackexchange.com/a/4281/23098)
```
\usetikzlibrary{calc}
\foreach \i in {0,...,9} \draw (\i*36:2cm) node(\i){\i};
\foreach \i in {0,...,9} \draw let \n1={int(mod(\i+2,10))} in (\i) -- (\n1);
```
