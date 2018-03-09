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
file_env 'PYDIO_PASSWORD'
# permissions
PUID=${PUID:-911}
PGID=${PGID:-911}

if [ -f /data/booster/pydioconf.conf ]; then

if [ ! -f /var/www/pydio/data/cache/first_run_passed ]; then
ln -s /data/pydio /var/www/pydio/data
/usr/sbin/groupmod -g $PGID abc
/usr/sbin/usermod -u $PUID -g $PGID abc
chown -Rf abc:abc /tmp/sess
chown -Rf abc:abc /var/www/pydio
chmod -R 770 /tmp/sess
fi

else

php /var/www/data/generate_pydio_hash.php $PYDIO_PASSWORD

/usr/sbin/groupmod -g $PGID abc
/usr/sbin/usermod -u $PUID -g $PGID abc
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
rm -Rf /var/www/pydio/data

ln -s /data/pydio /var/www/pydio/data
chown -Rf abc:abc /data
chown -Rf abc:abc /tmp/sess
chown -Rf abc:abc /var/www/pydio
chmod -R 770 /tmp/sess
chmod -R 700 /data/pydio

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
mysql -u $PYDIO_DB_USER -p"$PYDIO_DB_PASSWORD" -h $PYDIO_DB_HOST < /var/www/data/pydio.sql

mkdir /wp/recycle_bin
chown abc:abc /wp*
chown abc:abc /wp/recycle_bin

fi

echo " Starting User uid: $(id -u abc), User gid:    $(id -g abc)"
set -e
