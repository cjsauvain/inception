mysql_secure_installation << EOF
Bonjour456-
n
n
Y
Y
Y
Y
EOF

CREATE DATABASE testDatabase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'champi'@'localhost' IDENTIFIED BY 'Bonjour456-!';
FLUSH PRIVILEGES;
