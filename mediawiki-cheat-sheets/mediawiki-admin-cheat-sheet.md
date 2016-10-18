## MediaWiki Cheat Sheet for Admins

### How to Check the MediaWiki Version?

See [Check What Version of MediaWiki You Are Running](http://www.whitefirdesign.com/resources/check-what-version-of-mediawiki-you-are-running.html)

***Note:*** Please ALWAYS keep the version information below up-to-date.

The current version of `Disalg-Wiki` is [1.25.2](https://www.mediawiki.org/wiki/MediaWiki_1.25).

### How to Log in the `Disalg-Wiki` Server?

See the [Project: disalg-equipment](https://bitbucket.org/disalg-njucs/disalg-equipment/src).

### Where are the `Disalg-Wiki` files?

All `Disalg-Wiki` files are in `/var/www/html/wiki`.
All the files mentioned below are relative to `/var/www/html/wiki`, unless otherwise stated.

### How to Configure `Disalg-Wiki`?

By default, you need to modify the `LocalSettings.php` file.

Under `/var/www/html/wiki/includes/`, there is a file named `DefaultSettings.php`.
You can learn a lot from it about how to configure `Disalg-Wiki`.
However, do not modify `DefaultSettings.php`.
It will be overwritten once upgraded.

### How to Change MediaWiki Permissions?

The help page [Manual:User rights](https://www.mediawiki.org/wiki/Manual:User_rights) indicates how to grant/revoke permissions for users/user groups.

In `LocalSettings.php`, modify the array `$wgGroupPermissions` appropriately.

### How to Change Pages White List?

The help page [Manual:$wgWhitelistRead](https://www.mediawiki.org/wiki/Manual:$wgWhitelistRead#cite_note-1) indicates how to add/remove pages to/from white list.

In `LocalSettings.php`, modify the array `$wgWhitelistRead` appropriately.

It supports regular expressions. See [Manual:$wgWhitelistReadRegexp](https://www.mediawiki.org/wiki/Manual:$wgWhitelistReadRegexp).

***Warning:*** If you are using a content language other than English, you may need to use the translated special page names instead of their English names.
