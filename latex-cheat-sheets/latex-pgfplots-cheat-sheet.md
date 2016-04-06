# LaTeX PGFPlots Cheat Sheet

## `\begin{axis}`

## `\addplot[]{}`
- [Plot marks on every n-th point](http://tex.stackexchange.com/a/239707/23098)

  ```
  \addplot+[scatter,samples=100, mark repeat=5,mark phase=7] { sin(deg(x)) };
  ```

## Legends

### `\addlegendimage{}` and `\addlegendentry{}`
- [Adding legend title](http://tex.stackexchange.com/a/2332/23098)

  ```
  \addlegendimage{empty legend}
  \addplot {sqrt(x)}; 

  \addlegendentry{\hspace{-.6cm}\textbf{A title}}
  \addlegendentry{$\sqrt{x}$}
  ```
  
### `legend style = { }`
