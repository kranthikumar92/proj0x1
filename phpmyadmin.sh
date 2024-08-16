sudo apt update

sudo apt install apache2 php php-mysql

sudo systemctl start apache2 && sudo systemctl enable apache2

sudo apt install phpmyadmin

sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin

#Edit the config.inc.php file to set up the connection to your RDS database:
nano /etc/phpmyadmin/config.inc.php
#Set the auth_type to ‘cookie’.
#Specify your RDS endpoint, username, and password.
#Use TCP/IP networking.

sudo systemctl restart apache2



sudo su
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove -y
apt-get install apache2 php7.0 php7.0-cli php7.0-fpm php7.0-gd php-ssh2 libapache2-mod-php7.0 php7.0-mcrypt mysql-server php7.0-mysql git unzip zip postfix php7.0-curl mailutils php7.0-json phpmyadmin -y
php5enmod mcrypt

nano /etc/apache2/sites-enabled/000-default.conf
--ADD LINE-- 
Include /etc/phpmyadmin/apache.conf

service apache2 restart

nano /etc/phpmyadmin/config.inc.php
--ADD LINES BELOW THE PMA CONFIG AREA AND FILL IN DETAILS--
$i++;
$cfg['Servers'][$i]['host']          = '__FILL_IN_DETAILS__';
$cfg['Servers'][$i]['port']          = '3306';
$cfg['Servers'][$i]['socket']        = '';
$cfg['Servers'][$i]['connect_type']  = 'tcp';
$cfg['Servers'][$i]['extension']     = 'mysql';
$cfg['Servers'][$i]['compress']      = FALSE;
$cfg['Servers'][$i]['auth_type']     = 'config';
$cfg['Servers'][$i]['user']          = '__FILL_IN_DETAILS__';
$cfg['Servers'][$i]['password']      = '__FILL_IN_DETAILS__';