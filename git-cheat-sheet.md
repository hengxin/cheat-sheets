This is a cheat sheet for common Git usage.

## Git init and GitHub repository

### Case study (1): Adding an existing project to GitHub

You have created a repository (with url `rep-url`) in GitHub and you also have a local project.
You can add the existing project to the GitHub repository in the following steps (all at the local project side):

- `git init`
- `git add -A`
- `git commit -m 'commit-msg'`
- `git remote add origin rep-url`
- `git push origin master`

> Refer to [Adding an existing project to GitHub using the command line](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/).

### Case study (2): Reinitialize an existing repository

An interesting problem on `git init`: [Does running git init twice initialize a repository or reinitialize an existing repo?@stackoverflow](http://stackoverflow.com/q/5149694/1833118)

The answer is "don't worry". Git docs:
> Running `git init` in an existing repository is safe. It will not overwrite things that are already there. The primary reason for rerunning git init is to pick up newly added templates.

## Commit

### Basic Commands

- check status
`git status`

- add files to commit
`git add -A`

- commit
`git commit -m 'msg for this commit'`

- push
`git commit origin branch-name`

### Commit History

Use `git log` to show commit history.
  - `-p`: show the patch (i.e., diff); 
  - `-n`: show the last n commits
  - `--stat`: show summary for each commit
  - `--pretty=[oneline, short, full, fuller]`: four default output formats
  - `--pretty=format:""`: specify your own output formats, for exmaple,
    - `%h`: abbreviated commit hash
    - `%s`: subject
    - `%an`: author name
    - `%ar`: author date, relative

Filter commit history:
- `git log --since=[2.weeks | 2016-01-27 | 2 years 1 day 30 minutes ago]` there are also `--after|until|before`
- `git --author|--committer|--grep|-S` where `-S(string)` only shows commits adding or removing code matching the string

### Case Study: undo

1. Undo 'git add' *before* commit
  - `git reset <file>` to remove this file from the current index
  - `git reset` to unstage all due changes

1. Amend the commit message *before* push

  - `git commit --amend` to promote an editor with the original message; OR,

  - `git commit --amend -m 'new commit message'`

2. Discard unstaged changes

  - `git clean -df` to first removes all untracked files if you want, and then

  - `git checkout the-file-to-discard` for specific file; OR
  
  - `git checkout -- .` for all files 
  
3. Delete commits

## Remote

- `git remote add origin git://remote-site-url`
- `git remote set-url origin git://new.url.here`
  Refer to [how to remove remote origin from git repo@stackoverflow](http://stackoverflow.com/a/16330439/1833118).
  
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
