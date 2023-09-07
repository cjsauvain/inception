sleep 5

if [ ! -e /var/www/wordpress/wp-config.php ]; then

wp config create	--allow-root \
					--dbname=$SQL_DATABASE \
					--dbuser=$SQL_USER \
					--dbpass=$SQL_PASSWORD \
					--dbhost=mariadb:3306 \
					--path='/var/www/wordpress'

wp core install	--allow-root \
				--url=$DOMAIN_NAME\
				--admin_user=$ADMIN_LOGIN \
				--admin_password=$ADMIN_PASS \
				--admin_email=$ADMIN_EMAIL \
				--title=$SITE_TITLE \
				--path='/var/www/wordpress'

wp user create	$USER_LOGIN $USER_EMAIL \
				--allow-root \
				--user_pass=$USER_PASS \
				--role=author \
				--path='/var/www/wordpress'

fi

php-fpm7.4 -F
