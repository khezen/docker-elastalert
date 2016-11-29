#!/bin/bash

# CREDENTIALS
if [ "$ELASTALERT_USER" != "" ]; then
    sed -ri "s/es_username:[^\r\n]*/es_username: $ELASTALERT_USER/" /etc/elastalert/elastalert.yml
    sed -ri "s/es_password:[^\r\n]*/es_password: $ELASTALERT_PWD/" /etc/elastalert/elastalert.yml
fi

# ELASTICSEARCH URL
sed -ri "s/es_host:[^\r\n]*/es_host: $ELASTICSEARCH_HOST/" /etc/elastalert/elastalert.yml
sed -ri "s/es_port:[^\r\n]*/es_port: $ELASTICSEARCH_PORT/" /etc/elastalert/elastalert.yml

# RULES
sed -ri "s/rules_folder:[^\r\n]*/rules_folder: \/usr\/share\/elastalert\/rules/" /etc/elastalert/elastalert.yml
