# LaTeX TikZ Cheat Sheet

## Arrows

## Background Library

## Shapes

### rectangle
- `minimum size = <dimen>`: to get a rectangle
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

