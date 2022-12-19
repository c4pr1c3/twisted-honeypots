#!/bin/bash
/etc/init.d/mariadb start
cd /opt/twisted-honeypots/ && source setup-db.sh && source start.sh
tail -F /var/log/alternatives.log
