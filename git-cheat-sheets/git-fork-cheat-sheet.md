# git-fork-cheat-sheet

## [Configuring a remote for a fork](https://help.github.com/en/articles/configuring-a-remote-for-a-fork)

You must configure a ***remote*** that points to the *upstream repository* in Git 
to sync your fork with the original repository.

- `git remote add upstream your-git-project`

## [Syncing a fork](https://help.github.com/en/articles/syncing-a-fork)

- `git fetch upstream`
- `git checkout master`: Check out your fork's local `master` (or some other) branch
- `git merge upstream/master`