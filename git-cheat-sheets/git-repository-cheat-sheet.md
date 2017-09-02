# Git Repository Cheat Sheet

## [Adding an existing project to GitHub](https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/)

You have created a repository (with url `rep-url`) in GitHub.
You can add your existing local project to the GitHub repository as follows:

- `git init`
- `git add -A`
- `git commit -m 'commit-msg'`
- `git remote add origin rep-url`
- `git push origin master`

## [Reinitialize an existing repository@stackoverflow](http://stackoverflow.com/q/5149694/1833118)

According to Git Docs:

  ```
  Running `git init` in an existing repository is safe. It will not overwrite things that are already there.
  The primary reason for rerunning git init is to pick up newly added templates.
  ```

## [Split a repository in two](https://confluence.atlassian.com/bitbucket/split-a-repository-in-two-313464964.html)
  You may want to replace Step 7 with a simpler one as Step 5 [here](https://help.github.com/articles/splitting-a-subfolder-out-into-a-new-repository/): `git filter-branch --prune-empty --subdirectory-filter YOUR_FOLDER_NAME master`

## [Rename local git root folder](http://stackoverflow.com/q/7199659/1833118)

Basically, it is [safe](http://stackoverflow.com/a/7199670/1833118) to rename the folder containing a Git repository. All paths inside the Git repository are relative.

For possible issues, see [exceptions](http://stackoverflow.com/a/7200624/1833118).

## [Renaming a (remote) repository](https://help.github.com/articles/renaming-a-repository/)

- Rename online
- `git remote set-url origin new_url`: change a remote's URL
