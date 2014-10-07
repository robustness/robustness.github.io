---
layout: post
title: WordPress
categories:
- Tech
tags:
- Blog
---

 
### WordPress Installation

> Note that my website name is robustness.cn

Clean up the previous installation (if you have previous installation):
    cd /srv/www

    sudo rm -r *

    mysql -u root -p
    drop database robustness_cn;
    sudo apt-get purge wordpress
    cd /var/www
    sudo rm .htaccess
    sudo rm -r *
    Installation:
    sudo apt-get install -y wordpress
    cd /var/www

    mkdir html
    sudo ln -s /usr/share/wordpress /var/www/html/wordpress
    cd /usr/share/wordpress

    sudo bash /usr/share/doc/wordpress/examples/setup-mysql -n robustness_cn robustness.cn

    chown -R www-data /usr/share/wordpress
    sudo cp /var/www/html/wordpress/index.php /var/www/.
    sudo cp /var/www/html/wordpress/.htaccess /var/www/.
    vi /var/www/index.php

    Change the line that says:
    require(‘./wp-blog-header.php' );
    to the following, using your directory name for the WordPress core files:
    require(‘./html/wordpress/wp-blog-header.php' );
    Save the file.

Open up your wp-config.php file, located at the root of your WordPress installation, and add the following code:

1

	

define('UPLOADS', 'wp-content/LeiImages');

