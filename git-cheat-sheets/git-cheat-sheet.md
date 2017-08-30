# Git Commands Cheat Sheet

## Git Books and Tutorials

### Online and Interactive Tutorials
- [Git in codeschool](https://www.codeschool.com/learn/git)
- [Learn Git Branching](http://learngitbranching.js.org/)

## `git config`

### Password
- [Caching your GitHub password in Git](https://help.github.com/articles/caching-your-github-password-in-git/)

```
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600000' # in seconds
```

- [Unable to connect to cache daemon?](http://stackoverflow.com/a/22711778/1833118)

```
sudo chown <your-user> ~/.git-credential-cache/socket
```

- [Git Push Fails - fatal: The remote end hung up unexpectedly](https://confluence.atlassian.com/bitbucketserverkb/git-push-fails-fatal-the-remote-end-hung-up-unexpectedly-779171796.html)

  I encounter this issue with Bitbucket. The resolution is to increase the Git buffer size to the largest individual file size of your repo: `git config --global http.postBuffer 157286400`

### Chinese Characters

- [How to handle Asian characters in file names in Git?](http://stackoverflow.com/a/4416780/1833118)

```
git config --global core.quotepath false
```

Or, alternatively, adding the following snippet to your git config file (`$HOME/.gitconfig` usually):

```
[core]
    quotepath = false
```

## GitHub repository and `git init` 

### [Adding an existing project to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)

You have created a repository (with url `rep-url`) in GitHub.
You can add your existing local project to the GitHub repository as follows:

- `git init`
- `git add -A`
- `git commit -m 'commit-msg'`
- `git remote add origin rep-url`
- `git push origin master`

### [Reinitialize an existing repository@stackoverflow](http://stackoverflow.com/q/5149694/1833118)

According to Git Docs:

  ```
  Running `git init` in an existing repository is safe. It will not overwrite things that are already there.
  The primary reason for rerunning git init is to pick up newly added templates.
  ```

### [Split a repository in two](https://confluence.atlassian.com/bitbucket/split-a-repository-in-two-313464964.html)
  You may want to replace Step 7 with a simpler one as Step 5 [here](https://help.github.com/articles/splitting-a-subfolder-out-into-a-new-repository/): `git filter-branch --prune-empty --subdirectory-filter YOUR_FOLDER_NAME master`

### [Rename local git root folder](http://stackoverflow.com/q/7199659/1833118)

Basically, it is [safe](http://stackoverflow.com/a/7199670/1833118) to rename the folder containing a Git repository. All paths inside the Git repository are relative.

For possible issues, see [exceptions](http://stackoverflow.com/a/7200624/1833118).

### [Renaming a (remote) repository](https://help.github.com/articles/renaming-a-repository/)

- Rename online
- `git remote set-url origin new_url`: change a remote's URL

## Commit: `git commit`

### Basic Commands

- `git status`: check status
- `git add`: [add files to commit@stackoverflow](http://stackoverflow.com/a/572660/1833118)
  - `git add -A`: stages All = `git add .; git add -u`
  - `git add .`: stages new and modified, without deleted
  - `git add -u`: stages modified and deleted, without new
- `git commit -m 'msg for this commit'`: commit
- `git push origin branch-name`: push

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

### Undos

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
  
#### [Undo commits *before* push]()
  - [`git reset --hard origin/master`](http://stackoverflow.com/a/1611227/1833118): undo the last commit, to reset it to whatever the origin was at
  - [`git reset HEAD~1`](http://stackoverflow.com/a/14281090/1833118): undo the last commit
  - [`git reset --hard {commit-id}`](http://stackoverflow.com/a/32072299/1833118): to go back to the particular commit

#### [Undo the last commit *after* push](http://stackoverflow.com/a/6459157/1833118)
  - `git log`: to get the commit hash
  - `git revert <commit-hash>`: revert the commit
  - `git push`: send it to remote as usual

## Push: `git push`

- [Git hangs while writing objects in git push](http://stackoverflow.com/a/26663047/1833118)
- [The remote end hung up unexpectedly while git cloning](http://stackoverflow.com/a/6849424/1833118)

```
git config --global http.postBuffer 524288000
```

## Remote

- `git remote add origin git://remote-site-url`

### [Changing a remote's URL](https://help.github.com/articles/changing-a-remote-s-url/)

```
git remote -v
git remote set-url origin git://new.url.here
git remote -v
```

### [Rename a remote](https://help.github.com/articles/renaming-a-remote/)

```
git remote -v
git remote rename origin destination
git remote -v
```
  

## Git Trace
- [`GIT_CURL_VERBOSE=1 GIT_TRACE=1 git push`](https://github.com/github/git-lfs/issues/1356)
