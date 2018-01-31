# LaTeX List Cheat Sheet

## Packages for List

- [Enumitem always throwing errors](https://tex.stackexchange.com/a/238919/23098)

```
It seems that `enumitem` clashes with the package `paralist`. 

Might be worth noting that this error only occurs 
if on use `enumitem,paralist` but not if loaded as `paralist,enumitem`.
```

## List Settings 

- [How to change list settings globally?](https://tex.stackexchange.com/a/75587/23098)

```
\usepackage{enumitem}

\setenumerate{label=(\roman*),itemsep=3pt,topsep=3pt}

\setlist[enumerate]{itemsep=3pt,topsep=3pt}
\setlist[enumerate,1]{label=(\roman*)}
```

- [Modifying whitespace before and after list separately using enumitem package](https://tex.stackexchange.com/a/199204/23098)

You can use `before=<code>` and/or `after=<code>` to put the space/some latex code.

```
\usepackage{enumitem}

\setlist{nosep, after = \vspace{\baselineskip}} % -5pt
```

- [Reduce linespread between `\item` globally](https://tex.stackexchange.com/a/21189/23098)

```
\usepackage{enumitem}
\setlist[1]{itemsep=-5pt}
\setlist[2]{itemsep=-5pt}  % the second level
```
