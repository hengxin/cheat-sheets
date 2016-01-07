## Abstract
This is a cheat sheet for common Git usage.

## Commit and Exceptions

### Commit

- check status
`git status`

- add files to commit
`git add -A`

- commit
`git commit -m 'msg for this commit'`

- push
`git commit origin branch-name`

### Exceptions

- amending the commit message *before* push

  - `git commit --amend` to promote an editor with the original message; OR,

  - `git commit --amend -m 'new commit message'`

- discard unstaged changes

  - `git clean -df` to first removes all untracked files if you want, and then

  - `git checkout the-file-to-discard` for specific file; OR
  
  - `git checkout -- .` for all files 
  
  ## Branches

### Create branch

- create branch
`git branch branch-name`

- checkout branch
`git checkout branch-name`

> Note: create + checkout: `git checkout -b branch-name`

## Tags

### Create tags

- create a local tag v0.5
`git tag -a v0.5 -m 'msg for this tag'`

- push a specific tag 
`git push origin v0.5`

- push all tags
`git push origin --tags`

### Delete tags 

See [How to delete a remote tag? @ StackOverflow](http://stackoverflow.com/a/5480292/1833118)

- delete a local tag v0.5
`git tag -d v0.5`

- delete a remote tag v0.5
`git push --delete origin v0.5`

### Show tags
`git tag` or `git show v0.5`
