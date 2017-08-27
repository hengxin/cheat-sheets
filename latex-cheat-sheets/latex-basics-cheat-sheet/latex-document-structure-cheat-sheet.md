# LaTeX Document Structure Cheat Sheet

## Pages and Columns
- [What is the use of \clearpage{\thispagestyle{empty}\cleardoublepage}](https://tex.stackexchange.com/q/360739/23098)

```
Here's what the commands are supposed to do.

- \clearpage ends the current page and prepares LaTeX to build a new one
- { opens a group
- \thispagestyle{empty} tells LaTeX to avoid adorning the current page with headers and footers
- \cleardoublepage tells LaTeX to issue a new page if the current one (the fresh page initiated after \clearpage) is 
odd numbered
- } closes the group
```

## Footnotes
