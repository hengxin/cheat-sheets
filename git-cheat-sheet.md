# Git Commands Cheat Sheet

## `git config`

### Password
- [Caching your GitHub password in Git](https://help.github.com/articles/caching-your-github-password-in-git/)
```
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600000' # in seconds
```

## `git init` and GitHub repository

### Case study (1): [Adding an existing project to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)

You have created a repository (with url `rep-url`) in GitHub.
You can add your existing local project to the GitHub repository as follows:

- `git init`
- `git add -A`
- `git commit -m 'commit-msg'`
- `git remote add origin rep-url`
- `git push origin master`

### Case study (2): [Reinitialize an existing repository@stackoverflow](http://stackoverflow.com/q/5149694/1833118)

According to Git Docs:
> Running `git init` in an existing repository is safe. It will not overwrite things that are already there. The primary reason for rerunning git init is to pick up newly added templates.

### Case Study (3): [Split a repository in two](https://confluence.atlassian.com/bitbucket/split-a-repository-in-two-313464964.html)
  You may want to replace Step 7 with a simpler one as Step 5 [here](https://help.github.com/articles/splitting-a-subfolder-out-into-a-new-repository/): `git filter-branch --prune-empty --subdirectory-filter YOUR_FOLDER_NAME master`

## Commit

### Basic Commands

- `git status`: check status
- `git add`: [add files to commit@stackoverflow](http://stackoverflow.com/a/572660/1833118)
  - `git add -A`: stages All = `git add .; git add -u`
  - `git add .`: stages new and modified, without deleted
  - `git add -u`: stages modified and deleted, without new
- `git commit -m 'msg for this commit'`: commit
- `git commit origin branch-name`: push

### Commit History

Use `git log` to show commit history.
  - `-p`: patch (i.e., diff); 
  - `-n`: the last n commits
  - `--stat`: summary for each commit
  - `--pretty=[oneline, short, full, fuller]`: four default output formats
  - `--pretty=format:""`: specify your own output formats, for exmaple,
    - `%h`: abbreviated commit hash; `%s`: subject; `%an`: author name; `%ar`: author date, relative

Filter commit history:
- `git log --since=[2.weeks | 2016-01-27 | 2 years 1 day 30 minutes ago]` there are also `--after|until|before`
- `git --author|--committer|--grep|-S` where `-S(string)` only shows commits adding or removing code matching the string

### Case Study: undo

#### [Undo 'git add' *before* commit@stackoverflow](http://stackoverflow.com/q/348170/1833118)
  - `git reset <file>` to remove this file from the current index
  - `git reset` to unstage all due changes

#### Amend the commit message *before* push
  - `git commit --amend` to promote an editor with the original message; OR,
  - `git commit --amend -m 'new commit message'`

#### Discard unstaged changes
  - `git clean -df` to first removes all untracked files if you want, and then
  - `git checkout the-file-to-discard` for specific file; OR
  - `git checkout -- .` for all files
  
#### Delete commits

## Remote

- `git remote add origin git://remote-site-url`
- `git remote set-url origin git://new.url.here`
  Refer to [how to remove remote origin from git repo@stackoverflow](http://stackoverflow.com/a/16330439/1833118).
  
## Branches

### Basic Commands

- `git branch branch-name`: create branch
- `git checkout branch-name`: checkout branch
- `git checkout -b branch-name`: create *and* checkout branch
- `git fetch  \\  git checkout branch-name`: [checkout a new remote branch](http://stackoverflow.com/a/1783426/1833118)

### Case Study

#### [Move existing, uncommited work to a new branch in Git@stackoverflow](http://stackoverflow.com/q/1394797/1833118)
`git checkout -b <new-branch>`: This will leave your current branch as is, create and checkout a new branch and keep all your changes. Then `git add <files>`, `git commit`.

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

## Git Ignore `.gitignore`

### Collections
- [github/gitignore](https://github.com/github/gitignore)

### Specific Examples
- `/your/path/to/dir/`: ignore a directory relative to the `.git` path
- [Gitignore for Microsoft Office](https://github.com/github/gitignore/blob/master/Global/MicrosoftOffice.gitignore)
  ```
  *.tmp
  ~$*.doc*
  ~$*.xls*
  *.xlk
  ~$*.ppt*
  ```
- [TeX.gitignore](https://github.com/github/gitignore/blob/master/TeX.gitignore)
