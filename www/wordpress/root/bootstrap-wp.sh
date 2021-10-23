#!/bin/sh
# (christer.edwards@gmail.com)
# bootstrap wordpress database and token

## set random token string
BOOTSTRAP_TOKEN=$(openssl rand -hex 18)

## copy config sample into place
cp /usr/local/www/wordpress/wp-config-sample.php /usr/local/www/wordpress/wp-config.php

## find/replace magic
sed -i '' -e s#username_here#wpuser# \
  -e s#password_here#$BOOTSTRAP_TOKEN# \
  -e s#database_name_here#wordpress# \
    /usr/local/www/wordpress/wp-config.php

sed -i '' 's/localhost/127.0.0.1/' /usr/local/www/wordpress/wp-config.php

## import database
echo "CREATE DATABASE wordpress; CREATE USER wpuser@localhost IDENTIFIED BY
'$BOOTSTRAP_TOKEN'; GRANT ALL PRIVILEGES ON wordpress.* TO wpuser@localhost;" | mysql

## cleanup
rm /root/bootstrap-wp.sh
