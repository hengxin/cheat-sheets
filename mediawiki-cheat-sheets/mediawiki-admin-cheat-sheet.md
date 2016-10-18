## MediaWiki Cheat Sheet for Admins

This Document is especially for Disalg-Wiki Admins.

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

### Permissions

#### How to Change MediaWiki Permissions?

The help page [Manual:User rights](https://www.mediawiki.org/wiki/Manual:User_rights) indicates how to grant/revoke permissions for users/user groups.

In `LocalSettings.php`, modify the array `$wgGroupPermissions` appropriately.

```
# Revoke the 'edit'-related permissions
$wgGroupPermissions['user']['edit'] = false; 
# This disables the 'edit/create/upload/move'-related permissions automatically.

# Create a new group called 'editor' whose members have the 'edit'-related permissions. 
$wgGroupPermissions['editor']['edit'] = true;  
# By default, it inherits the 'edit/create/upload/move'-related permissions from group 'user'.
$wgGroupPermissions['sysop']['edit'] = true;
```

#### How to Change Pages White List?

The help page [Manual:$wgWhitelistRead](https://www.mediawiki.org/wiki/Manual:$wgWhitelistRead#cite_note-1) indicates how to add/remove pages to/from white list.

In `LocalSettings.php`, modify the array `$wgWhitelistRead` appropriately.

It supports regular expressions. See [Manual:$wgWhitelistReadRegexp](https://www.mediawiki.org/wiki/Manual:$wgWhitelistReadRegexp).

```
# Disable viewing of all pages not listed in the white list
$wgGroupPermissions['*']['read'] = false;
$wgGroupPermissions['user']['read'] = true;
$wgWhitelistRead = array ("首页", "MediaWiki:Common.css", "MediaWiki:Common.js", "Dis-alg");
$wgWhitelistReadRegexp = array( "/用户:/", "/用户讨论:/" );
```

***Warning:*** If you are using a content language other than English, you may need to use the translated special page names instead of their English names.

### [Categories](https://www.mediawiki.org/wiki/Help:Categories)

- [breadcrumb-style categories](https://www.mediawiki.org/wiki/Help:Categories#Adding_a_page_to_a_category); see also: [Manual:$wgUseCategoryBrowser](https://www.mediawiki.org/wiki/Manual:$wgUseCategoryBrowser)

```
$wgUseCategoryBrowser = true;
```

### File Uploads

- [Manual:$wgFileExtensions](https://www.mediawiki.org/wiki/Manual:$wgFileExtensions)

```
$wgFileExtensions = array_merge(
    $wgFileExtensions, array(
        'pdf', 'ppt', 'jp2', 'webp', 'doc','docx', 'xls', 'xlsx'
        )
    );
```

### Extensions

#### [CSS Extension](https://www.mediawiki.org/wiki/Extension:CSS)

The CSS extension allows CSS stylesheets to be included in specific articles. 

```
require_once "$IP/extensions/CSS/CSS.php";
```

#### [Extension:Bibtex](https://www.mediawiki.org/wiki/Extension:Bibtex)

TODO
