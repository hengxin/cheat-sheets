This file collects syntax, semantics, and common usages of Mathematica (mma, for short).

# List Manipulation

# Files

## Importing Data from File

- numerical data file: one per line

  `dataList = Flatten[Import[filePath, "Data"]];`
  
  - `filePath`: The file will be searched under `$Path`. Note that in Linux, `/home/$USER/` is in `$Path`.
  - `Flatten`: `Import` returns a `n * 1` matrix. We use `Flatten` to obtain a list of data.
