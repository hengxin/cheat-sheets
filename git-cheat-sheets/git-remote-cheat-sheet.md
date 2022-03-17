# Git Remote `git remote` Cheat Sheet

- `git remote add origin git://remote-site-url`

## [Changing a remote's URL](https://help.github.com/articles/changing-a-remote-s-url/)

```
git remote -v
git remote set-url origin git://new.url.here
git remote -v
```

- [Error with renamed repo in GitHub: "remote: This repository moved. Please use the new location"](https://stackoverflow.com/a/30443593)
  ```
  git remote set-url origin [updated link url https://........git]
  ```
## [Rename a remote](https://help.github.com/articles/renaming-a-remote/)

```
git remote -v
git remote rename origin destination
git remote -v
```

## [Remove a remote](https://help.github.com/en/articles/removing-a-remote)

```
git remote -v
git remote rm destination
git remote -v
```
