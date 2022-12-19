from python:3.7
Add . /opt/twisted-honeypots
ENV MARIADB_MAJOR 10.5
# ref: https://github.com/mariadb-corporation/mariadb-server-docker/blob/f6853bfcb7395daa58e4b6ef45e2bf343577fd6e/10.1/Dockerfile#L98
RUN set -ex; \
	{ \
		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'toor'; \
		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'toor'; \
	} | debconf-set-selections; \
	cd /opt/twisted-honeypots && bash install.sh && chmod +x entrypoint.sh

EXPOSE 21 22 23

ENTRYPOINT ["/opt/twisted-honeypots/entrypoint.sh"]
