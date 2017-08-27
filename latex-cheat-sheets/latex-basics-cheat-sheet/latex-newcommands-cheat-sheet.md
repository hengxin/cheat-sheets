# LaTeX NewCommands Cheat Sheet

## Math

- `\set{a, b, c}` 

```
\newcommand{\set}[1]{\{#1\}}
```

- `\seq{1,2,3}`

```
% input: sequence of numbers, separated by commas
% output: sequence of numbers, separated by \quad
% See http://tex.stackexchange.com/a/60026/23098
% \usepackage{xstring}

\newcommand{\seq}[1]{%
    \noexpandarg    
    \StrSubstitute{#1}{,}{\quad}[\ele]
    \ele}
```

## Floats

- `\fignocaption{width = 0.618\textwidth}{figs/logo.pdf}`

```
% for fig without caption: #1: width/size; #2: fig file
\newcommand{\fignocaption}[2]{
  \begin{figure}[htp]
    \centering
    \includegraphics[#1]{#2}
  \end{figure}
}
```

- `\fig{width = 0.618\textwidth}{figs/logo.pdf}{NJU Logo.}`

```
% for fig without caption: #1: width/size; #2: fig file; #3: fig caption
\newcommand{\fig}[3]{
  \begin{figure}[htp]
    \centering
      \includegraphics[#1]{#2}
      \caption{#3}
  \end{figure}
}
```
