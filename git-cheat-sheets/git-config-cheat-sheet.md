# Git Configuration `git config` Cheat Sheet

- [Setting your username in Git](https://help.github.com/articles/setting-your-username-in-git/)

```
git config --global user.name "NAME" 	% to set username 
git config --global user.name	     	% to check username
```

- [Setting your commit email address in Git](https://help.github.com/articles/setting-your-commit-email-address-in-git/)

```
git config --global user.email "EMAIL"	% to set email
git config --global user.email		% to check email
```

- [Caching your GitHub password in Git](https://help.github.com/articles/caching-your-github-password-in-git/)

```
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600000' # in seconds
```

- [Unable to connect to cache daemon?](http://stackoverflow.com/a/22711778/1833118)

```
sudo chown <your-user> ~/.git-credential-cache/socket
```

- [The remote end hung up unexpectedly while git cloning](http://stackoverflow.com/a/6849424/1833118)
- [Git hangs while writing objects in git push](http://stackoverflow.com/a/26663047/1833118)
- [Git Push Fails - fatal: The remote end hung up unexpectedly](https://confluence.atlassian.com/bitbucketserverkb/git-push-fails-fatal-the-remote-end-hung-up-unexpectedly-779171796.html)

> I encounter this issue with Bitbucket. 
> The resolution is to increase the Git buffer size to the largest individual file size of your repo: 
> `git config --global http.postBuffer 157286400`

- [How to handle Asian characters in file names in Git?](http://stackoverflow.com/a/4416780/1833118)

```
git config --global core.quotepath false
```

Or, alternatively, adding the following snippet to your git config file (`$HOME/.gitconfig` usually):

```
[core]
    quotepath = false
```

- [git cannot clone or push? failed to connect, connection refused @ StackOverflow](https://stackoverflow.com/q/24543372/1833118)

```
fatal: unable to access 'https://github.com/xxxx/xxxx.git': Failed to connect to 127.0.0.1 port 8087: Connection refused
```

  - [This happens because a proxy is configured in git.](https://stackoverflow.com/a/43137514/1833118)

  ```
  env|grep -i proxy

  unset https_proxy
  ```
