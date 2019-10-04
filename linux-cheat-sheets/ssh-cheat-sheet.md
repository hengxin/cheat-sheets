# SSH Cheat Sheet

## Install

*Note:* The following documents the way how [the article: How To Set Up SSH Keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2) sets up ssh keys. 

1. `ssh-keygen -t rsa`: create the RSA key pair
2. store the keys and passphrase: by default, it is `~/.ssh/id_rsa`
3. `ssh-copy-id <user>@<ip>` or `ssh-copy-id <user>@<hostname>`: copy the public key onto the remote server

Now you can login via `ssh <user>@<ip>` or `ssh <user>@<hostname>` *without* entering password every time.

## Usages
- `ssh <user>@<host>`: login
- `service ssh restart`: restart

## Files
- `scp file user@host:/path/to/write_file/`: Copy file to remote host
- `scp user@host:/path/to/file /path/to/write_file/`: Download file from remote host
- `echo 'Some Text' | ssh user@remotehost "cat > /remotefile.txt"`: [Write to remote host](http://superuser.com/a/400720)
