#!/bin/bash
set +e

# usage: file_env VAR [DEFAULT]
#    ie: file_env 'XYZ_DB_PASSWORD' 'example'
# (will allow for "$XYZ_DB_PASSWORD_FILE" to fill in the value of
#  "$XYZ_DB_PASSWORD" from a file, especially for Docker's secrets feature)
file_env() {
	local var="$1"
	local fileVar="${var}_FILE"
	local def="${2:-}"
	if [ "${!var:-}" ] && [ "${!fileVar:-}" ]; then
		echo >&2 "error: both $var and $fileVar are set (but are exclusive)"
		exit 1
	fi
	local val="$def"
	if [ "${!var:-}" ]; then
		val="${!var}"
	elif [ "${!fileVar:-}" ]; then
		val="$(< "${!fileVar}")"
	fi
	export "$var"="$val"
	unset "$fileVar"
}

file_env 'PYDIO_DB_PASSWORD'
file_env '$PYDIO_USER1'
file_env '$PYDIO_USER2'
file_env '$PYDIO_USER3'
file_env '$PYDIO_PASSWORD1'
file_env '$PYDIO_PASSWORD2'
file_env '$PYDIO_PASSWORD3'
file_env '$PYDIO_SECRET1'
file_env '$PYDIO_SECRET2'
file_env '$PYDIO_SECRET3'

# permissions
PUID=${PUID:-911}
PGID=${PGID:-911}

TERM=dumb php -- <<'EOPHP'
<?php
// database might not exist, so let's try creating it (just to be safe)

$stderr = fopen('php://stderr', 'w');

// https://codex.wordpress.org/Editing_wp-config.php#MySQL_Alternate_Port
//   "hostname:port"
// https://codex.wordpress.org/Editing_wp-config.php#MySQL_Sockets_or_Pipes
//   "hostname:unix-socket-path"
list($host, $socket) = explode(':', getenv('PYDIO_DB_HOST'), 2);
$port = 0;
if (is_numeric($socket)) {
	$port = (int) $socket;
	$socket = null;
}
$user = getenv('PYDIO_DB_USER');
$pass = getenv('PYDIO_DB_PASSWORD');

$maxTries = 10;
do {
	$mysql = new mysqli($host, $user, $pass, '', $port, $socket);
	if ($mysql->connect_error) {
		fwrite($stderr, "\n" . 'MySQL Connection Error: (' . $mysql->connect_errno . ') ' . $mysql->connect_error . "\n");
		--$maxTries;
		if ($maxTries <= 0) {
			exit(1);
		}
		sleep(3);
	}
} while ($mysql->connect_error);

$mysql->close();
EOPHP

if [ ! -f /var/www/pydio/data/cache/first_run_passed ]; then

cp /var/www/data/pydio.sql /var/www/data/pydio_modif.sql

php /var/www/data/generate_pydio_hash.php 1 $PYDIO_USER1 $PYDIO_PASSWORD1 $PYDIO_SECRET1 
php /var/www/data/generate_pydio_hash.php 2 $PYDIO_USER2 $PYDIO_PASSWORD2 $PYDIO_SECRET2
php /var/www/data/generate_pydio_hash.php 3 $PYDIO_USER3 $PYDIO_PASSWORD3 $PYDIO_SECRET3

[ -d /tmp/sess ] || mkdir /tmp/sess/
[ -d /data/pydio/cache ] || mkdir -p /data/pydio/cache
[ -d /data/pydio/logs ] || mkdir -p /data/pydio/logs
[ -d /data/pydio/personal ] || mkdir -p /data/pydio/personal
[ -d /data/pydio/public ] || mkdir -p /data/pydio/public
[ -d /data/pydio/files ] || mkdir -p /data/pydio/files
[ -d /data/pydio/tmp ] || mkdir -p /data/pydio/tmp
[ -d /data/booster ] || mkdir -p /data/booster
[ -f /data/booster/pydiocaddy.conf ] || cp /etc/pydiocaddy.conf /data/booster/pydiocaddy.conf
[ -f /data/booster/pydioconf.conf ] || cp /etc/pydioconf.conf /data/booster/pydioconf.conf

array=(/var/www/pydio/data/cache/admin_counted /var/www/pydio/data/cache/diag_result.php /var/www/pydio/data/cache/first_run_passed)

for file in ${array[@]}
do
    if [ -e $file ]; then
        echo "$file exist"
    else
        echo "$file not exist, try to create it..."
        touch $file
    fi
done

sed -i -e "s/MYSQL_USER/$PYDIO_DB_USER/g" /var/www/pydio/data/plugins/boot.conf/bootstrap.json
sed -i -e "s/MYSQL_HOST/$PYDIO_DB_HOST/g" /var/www/pydio/data/plugins/boot.conf/bootstrap.json
sed -i -e "s/MYSQL_PASSWORD/$PYDIO_DB_PASSWORD/g" /var/www/pydio/data/plugins/boot.conf/bootstrap.json
sed -i -e "s/MYSQL_DATABASE/$PYDIO_DB_NAME/g" /var/www/pydio/data/plugins/boot.conf/bootstrap.json

echo "table $TABLENAME does not exist, try to create table..."
mysql -u $PYDIO_DB_USER -p"$PYDIO_DB_PASSWORD" -h $PYDIO_DB_HOST < /var/www/data/pydio_modif.sql

mkdir /wp/recycle_bin
mkdir /wp2/recycle_bin
mkdir /wp3/recycle_bin
mkdir /wp4/recycle_bin
mkdir /wp5/recycle_bin

else

cp /var/www/data/user.sql /var/www/data/user_modif.sql

php /var/www/data/update_pydio_hash.php 1 $PYDIO_USER1 $PYDIO_PASSWORD1 $PYDIO_SECRET1 
php /var/www/data/update_pydio_hash.php 2 $PYDIO_USER2 $PYDIO_PASSWORD2 $PYDIO_SECRET2
php /var/www/data/update_pydio_hash.php 3 $PYDIO_USER3 $PYDIO_PASSWORD3 $PYDIO_SECRET3

echo "Updating DB password"
mysql -u $PYDIO_DB_USER -p"$PYDIO_DB_PASSWORD" -h $PYDIO_DB_HOST < /var/www/data/user_modif.sql

fi

/usr/sbin/groupmod -g $PGID abc
/usr/sbin/usermod -u $PUID -g $PGID abc

chown -Rf abc:abc /data
chown -Rf abc:abc /tmp/sess
chown -Rf abc:abc /var/www/pydio
chmod -R 770 /tmp/sess
chmod -R 700 /data/pydio
chown -R abc:abc /wp*

echo " Starting User uid: $(id -u abc), User gid:    $(id -g abc)"
set -e
