if [ ! -d "/var/lib/mysql/$SQL_DATABASE" ]; then

service mariadb start
mysql_secure_installation << EOF
$SQL_ROOT_PASSWORD
Y
n
Y
Y
Y
Y
EOF

mysql -e "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;"
mysql -e "CREATE USER IF NOT EXISTS $SQL_USER@'localhost' IDENTIFIED BY '$SQL_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO $SQL_USER@'%' IDENTIFIED BY '$SQL_PASSWORD';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$SQL_ROOT_PASSWORD';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p $SQL_ROOT_PASSWORD shutdown

fi

exec mysqld_safe
