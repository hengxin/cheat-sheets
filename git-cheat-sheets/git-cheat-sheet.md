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

### FileMode

- [How do I make Git ignore file mode (chmod) changes?](https://stackoverflow.com/q/1580596/1833118)

If you do 
```
git config --global core.filemode false 
```
you'll only need to do this once for all repos.


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

#### [How to make Git “forget” about a file that was tracked but is now in .gitignore?](http://stackoverflow.com/a/1274447/1833118)

```
git rm --cached <file>
```

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
  
## Branches

### Create and Checkout Branches

- `git branch branch-name`: create branch
- `git checkout branch-name`: checkout branch
- `git checkout -b branch-name`: create *and* checkout branch
- `git fetch  \\  git checkout branch-name`: [checkout a new remote branch](http://stackoverflow.com/a/1783426/1833118)
- `git branch branch-name <sha1-of-commit>`: [Branch from a previous commit using git
](https://stackoverflow.com/a/2816728/1833118)
  - Or by using a symbolic ref.
  ```
  git branch branchname HEAD~3
  ```

### [Show Branches](http://gitready.com/intermediate/2009/02/13/list-remote-branches.html)

- `git branch`: show the local branches and mark the current local branch with (*)
- `git branch -a`: show both the local branches and the remote branches
- `git branch -r`: show the remote branches

### Rename local and remote branches

- [Rename a local branch](http://stackoverflow.com/a/6591218/1833118)
  - `git branch -m <old-branch> <new-branch>`: to rename a branch while pointed to any branch
  - `git branch -m <new-branch>`: rename the current branch

  When pushed, this will add the new branch when you push, but won't delete the old branch.
- [Rename a remote branch](http://stackoverflow.com/a/16220970/1833118)
  - `git branch -m old_branch new_branch`: rename branch locally
  - `git push origin :old_branch` OR `git push origin --delete old_branch`: delete the old branch
  - `git push --set-upstream origin new_branch` OR `git push -u --all`: push the new branch, set local branch to track the new remote

### [Delete Branches](http://stackoverflow.com/a/10999165/1833118)

- [`git branch -d <branch-name>`](https://makandracards.com/makandra/621-git-delete-a-branch-local-or-remote): delete a branch locally
- `git push origin --delete <branch-name>`: delete a remote branch

Note: use `-D` for `--delete --force`; force deletion without checking merged status

### Merge Branches

- [Best (and safest) way to merge a git branch into master](http://stackoverflow.com/a/5602109/1833118)

```
git checkout master
git pull origin master
git merge test
git push origin master
```

- [Git refusing to merge unrelated histories](http://stackoverflow.com/q/37937984/1833118)

In my case, error was just `fatal: refusing to merge unrelated histories` 
on every especially first `pull` request after remotely adding a git repo.

Using `--allow-unrelated-histories` flag worked with pull request in this way:

```
git pull origin <branchname> --allow-unrelated-histories
```

### [Move existing, uncommited work to a new branch in Git@stackoverflow](http://stackoverflow.com/q/1394797/1833118)
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

## Git Large File Storage; `git-lfs`

*Note:* If you use Bitbucket, then you should first [enable Git LFS](https://confluence.atlassian.com/bitbucketserver/git-large-file-storage-794364846.html) 
for the repository as follows:

- Repository settings > Large file storage (LFS) > Allow LFS > Save.

### Documentation

- [Git LFS](https://git-lfs.github.com/)
- [lfs@GitHub](https://github.com/github/git-lfs)
- [lsf@Bitbucket](https://confluence.atlassian.com/bitbucketserver/git-large-file-storage-794364846.html)

### [Install git-lsf](https://git-lfs.github.com/)
- `curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash`: install packagecloud
- `sudo apt-get install git-lfs`
- `git lfs install`

### [Config `.gitconfig`](https://confluence.atlassian.com/bitbucketserver/git-large-file-storage-794364846.html)

```
[filter "lfs"]
    clean = git-lfs clean %f
    smudge = git-lfs smudge %f
    required = true
```


#### Using git-lfs in a repository
- `git lfs track "*.zip"`: specify file patterns to store with Git LFS (stored in `.gitattributes`)
- `git add .gitattributes` 
- `git lfs ls-files`: to confirm
- Then use git as normal

## Git Ignore `.gitignore`

### `.gitignore` templates
- [github/gitignore](https://github.com/github/gitignore)
- `/your/path/to/dir/`: ignore a directory relative to the `.git` path
- [TeX.gitignore](https://github.com/github/gitignore/blob/master/TeX.gitignore)
- [Gitignore for Microsoft Office](https://github.com/github/gitignore/blob/master/Global/MicrosoftOffice.gitignore)
  ```
  *.tmp
  ~$*.doc*
  ~$*.xls*
  *.xlk
  ~$*.ppt*
  ```

### [Applying .gitignore to committed files](http://stackoverflow.com/a/7532131/1833118)

```
git ls-files -ci --exclude-standard  % to see the files that are included in the exclude lists
git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached  % to remove them from the repository (without deleting them from disk)
```

OR, adding the following as an alias in your `.gitconfig` file and using `git ign`

```
ign = !git ls-files -ci --exclude-standard -z | xargs -0r git rm --cached
```

## Git Trace
- [`GIT_CURL_VERBOSE=1 GIT_TRACE=1 git push`](https://github.com/github/git-lfs/issues/1356)
