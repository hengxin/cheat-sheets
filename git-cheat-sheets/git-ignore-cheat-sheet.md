# Gitignore `.gitignore` Cheat Sheet

## `.gitignore` templates
- [github/gitignore](https://github.com/github/gitignore)
- `/your/path/to/dir/`: ignore a directory relative to the `.git` path
- [TeX.gitignore](https://github.com/github/gitignore/blob/master/TeX.gitignore)
- [Vim.gitignore](https://github.com/github/gitignore/blob/master/Global/Vim.gitignore)
- [Gitignore for Microsoft Office](https://github.com/github/gitignore/blob/master/Global/MicrosoftOffice.gitignore)
  ```
  *.tmp
  ~$*.doc*
  ~$*.xls*
  *.xlk
  ~$*.ppt*
  ```

## Applying `.gitignore`

- [Applying .gitignore to committed files](http://stackoverflow.com/a/7532131/1833118)

```
git ls-files -ci --exclude-standard  % to see the files that are included in the exclude lists
git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached  % to remove them from the repository (without deleting them from disk)
```

OR, adding the following as an alias in your `.gitconfig` file and using `git ign`

```
ign = !git ls-files -ci --exclude-standard -z | xargs -0r git rm --cached
```

- [Apply gitignore on an existing repository already tracking large number of files](https://stackoverflow.com/a/19757964/1833118)
- [How to make Git "forget" about a file that was tracked but is now in .gitignore?](http://stackoverflow.com/a/1274447/1833118)

```
git rm --cached <file>

git add .
git commit -m '...'
git push
```

- [How do I make Git ignore file mode (chmod) changes?](https://stackoverflow.com/q/1580596/1833118)

If you do 
```
git config --global core.filemode false 
```
you'll only need to do this once for all repos.
