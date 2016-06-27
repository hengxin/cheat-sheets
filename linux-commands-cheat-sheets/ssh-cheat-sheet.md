# SSH Cheat Sheet

## Install

## Usages
- `ssh <user>@<host>`: login
- `service ssh restart`: restart

## Files
- `scp file user@host: /pathtowrite_file`: Copy file to remote host
- `echo 'Some Text' | ssh user@remotehost "cat > /remotefile.txt"`: [Write to remote host](http://superuser.com/a/400720)
