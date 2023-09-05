if [ -d /var/www/wordpress ]; then

sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" wordpress/wp-config.php

sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" wordpress/wp-config.php

sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" wordpress/wp-config.php

sed -i "s/localhost/mariadb/g" wordpress/wp-config.php

fi

php-fpm7.4 -F
