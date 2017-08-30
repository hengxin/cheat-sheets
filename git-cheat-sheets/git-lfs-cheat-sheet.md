# Git LFS (`git-lfs`) Cheat Sheet

## Documentation

- [Git LFS](https://git-lfs.github.com/)
- [lfs@GitHub](https://github.com/github/git-lfs)
- [lsf@Bitbucket](https://confluence.atlassian.com/bitbucketserver/git-large-file-storage-794364846.html)

## [Install git-lsf](https://git-lfs.github.com/)
- `curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash`: install packagecloud
- `sudo apt-get install git-lfs`
- `git lfs install`

## Configure for lfs

- [Config `.gitconfig` for lfs](https://confluence.atlassian.com/bitbucketserver/git-large-file-storage-794364846.html)

```
[filter "lfs"]
    clean = git-lfs clean %f
    smudge = git-lfs smudge %f
    required = true
```

## Using git-lfs in a repository

*Note:* If you use Bitbucket, you should first [enable Git LFS](https://confluence.atlassian.com/bitbucketserver/git-large-file-storage-794364846.html) 
for the repository as follows:

- Repository settings > Large file storage (LFS) > Allow LFS > Save.

- `git lfs track "*.zip"`: specify file patterns to store with Git LFS (stored in `.gitattributes`)
- `git add .gitattributes` 
- `git lfs ls-files`: to confirm
- Then use git as normal
