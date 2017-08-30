# Git Branch Cheat Sheet

## Create and Checkout Branches

- `git branch branch-name`: create branch
- `git checkout branch-name`: checkout branch
- `git checkout -b branch-name`: create *and* checkout branch
- `git fetch  \\  git checkout branch-name`: [checkout a new remote branch](http://stackoverflow.com/a/1783426/1833118)
- `git branch branch-name <sha1-of-commit>`: [Branch from a previous commit using git](https://stackoverflow.com/a/2816728/1833118)
  - Or by using a symbolic ref.
  ```
  git branch branchname HEAD~3
  ```

## [Show Branches](http://gitready.com/intermediate/2009/02/13/list-remote-branches.html)

- `git branch`: show the local branches and mark the current local branch with (\*)
- `git branch -a`: show both the local branches and the remote branches
- `git branch -r`: show the remote branches

## Rename Branches

- [Rename a local branch](http://stackoverflow.com/a/6591218/1833118)
  - `git branch -m <old-branch> <new-branch>`: to rename a branch while pointed to any branch
  - `git branch -m <new-branch>`: rename the current branch

  When pushed, this will add the new branch when you push, but won't delete the old branch.
- [Rename a remote branch](http://stackoverflow.com/a/16220970/1833118)
  - `git branch -m old_branch new_branch`: rename branch locally
  - `git push origin :old_branch` OR `git push origin --delete old_branch`: delete the old branch
  - `git push --set-upstream origin new_branch` OR `git push -u --all`: push the new branch, set local branch to track the new remote

## [Delete Branches](http://stackoverflow.com/a/10999165/1833118)

- [`git branch -d <branch-name>`](https://makandracards.com/makandra/621-git-delete-a-branch-local-or-remote): delete a branch locally
- `git push origin --delete <branch-name>`: delete a remote branch

Note: use `-D` for `--delete --force`; force deletion without checking merged status

## Merge Branches

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

## Move Branches

- [Move existing, uncommited work to a new branch in Git@stackoverflow](http://stackoverflow.com/q/1394797/1833118)
`git checkout -b <new-branch>`: This will leave your current branch as is, create and checkout a new branch and keep all your changes. Then `git add <files>`, `git commit`.
