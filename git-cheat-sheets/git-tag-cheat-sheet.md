# Git Tag Cheat Sheet

## Show tags
- `git tag` or `git show v0.5`: show tags

## Create tags
- `git tag -a v0.5 -m 'msg for this tag'`: create a local tag v0.5
- `git push origin v0.5`: push a specific tag 
- `git push origin --tags`: push all tags

## Delete tags 

See [How to delete a remote tag? @ StackOverflow](http://stackoverflow.com/a/5480292/1833118)

- `git tag -d v0.5`: delete a local tag v0.5
- `git push --delete origin v0.5`: delete a remote tag v0.5
