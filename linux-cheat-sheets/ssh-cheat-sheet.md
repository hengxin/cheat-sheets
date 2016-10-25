# SSH Cheat Sheet

## Install

- [How To Set Up SSH Keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)

1. `ssh-keygen -t rsa`: create the RSA key pair
2. store the keys and passphrase: by default, it is `~/.ssh/id_rsa`
3. `ssh-copy-id <user>@<ip>` or `ssh-copy-id <user>@<hostname>`: copy the public key onto the remote server

Now you can login via `ssh <user>@<ip>` or `ssh <user>@<hostname>` *without* entering password every time.

## Usages
- `ssh <user>@<host>`: login
- `service ssh restart`: restart

## Files
- `scp file user@host: /pathtowrite_file`: Copy file to remote host
- `echo 'Some Text' | ssh user@remotehost "cat > /remotefile.txt"`: [Write to remote host](http://superuser.com/a/400720)
