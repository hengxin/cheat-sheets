# LaTeX Programming Cheat Sheet

## `\newcommand`

- [`\newcommand` without args and spacing](http://tex.stackexchange.com/q/17730/23098)
  - Method 1: Call by `\cmd{}` instead of just `\cmd`.
  - Method 2: [using `xspace` package](http://tex.stackexchange.com/a/17731/23098)
  ```
  \usepackage{xspace} 
  \newcommand{\abc}{\textsc{abc}\xspace}
  ```

- [Optional argument for newcommand](http://tex.stackexchange.com/a/58629/23098)

Using the `xifthen` package:
```
\usepackage{xifthen}

\newcommand{\vpc}[1]{
  \ifthenelse{\isempty{#1}{}}{\textsf{VPC}}{\textsf{VPC-\MakeUppercase{#1}}}
} 

\newcommand{\test}[1][]{%
  \ifthenelse{\equal{#1}{}}{omitted}{given}%
}
```
