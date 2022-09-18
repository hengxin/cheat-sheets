# Git Commit `git commit` Cheat Sheet

## Basic Commands

- `git status`: check status
- `git add`: [add files to commit@stackoverflow](http://stackoverflow.com/a/572660/1833118)
  - `git add -A`: stages All = `git add .; git add -u`
  - `git add .`: stages new and modified, without deleted
  - `git add -u`: stages modified and deleted, without new
- `git commit -m 'msg for this commit'`: commit
- `git push origin branch-name`: push

## Commit History

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

## Undos

### Git Revert
- [Git force revert to HEAD~7](https://stackoverflow.com/q/3248971)

```
git reset --hard HEAD~7		% this will discard your changes entirely
  OR: git reset HEAD~7			% this will drop the commits but leave changes in the working copy
git push --force origin master	% `--force`
```

### [Undo 'git add' *before* commit@stackoverflow](http://stackoverflow.com/q/348170/1833118)
 - `git reset <file>` to remove this file from the current index
 - `git reset` to unstage all due changes

### Discard unstaged changes
  - `git clean -df` to first removes all untracked files if you want, and then
  - `git checkout the-file-to-discard` for specific file; OR
  - `git checkout -- .` for all files
  
### [Undo commits *before* push]()
  - [`git reset --hard origin/master`](http://stackoverflow.com/a/1611227/1833118): undo the last commit, to reset it to whatever the origin was at
  - [`git reset HEAD~1`](http://stackoverflow.com/a/14281090/1833118): undo the last commit
  - [`git reset --hard {commit-id}`](http://stackoverflow.com/a/32072299/1833118): to go back to the particular commit

### [Undo the last commit *after* push](http://stackoverflow.com/a/6459157/1833118)
  - `git log`: to get the commit hash
  - `git revert <commit-hash>`: revert the commit
  - `git push`: send it to remote as usual

### [git - how to revert multiple recent commits](http://serebrov.github.io/html/2014-01-04-git-revert-multiple-recent-comments.html)
  - `git reset --hard HEAD~3`
    - `git reset` will rewirte history
    - `--hard` will remove not-commited local changes

## Amend Commits

### Amend the commit message *before* push
 - `git commit --amend` to promote an editor with the original message; OR,
 - `git commit --amend -m 'new commit message'`

### [Undo commit `author/email` for specific commits](https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit)

Using "Interactive Rebase" as follows.

### [Using Interactive Rebase to Edit Past Commits](https://www.git-tower.com/learn/git/faq/change-author-name-email)
The first step is to identify the last "good" commit and provide its hash to the `rebase` command:
- `git rebase -i -p 0ad14fa5`
You can amend the commit now, with
- `git commit --amend`
Once you are satisfied with your changes, run
- `git rebase --continue`

### [Using `git filter-branch` to Edit Past Commits](https://www.git-tower.com/learn/git/faq/change-author-name-email)
Using script.

### [Edit commit `author/email` for the last commit](https://www.git-tower.com/learn/git/faq/change-author-name-email)
- `git commit --amend --author="John Doe <john@doe.org>"`
