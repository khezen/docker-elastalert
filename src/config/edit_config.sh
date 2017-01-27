#!/bin/bash

# CREDENTIALS

sed -ri "s/#es_username:[^\r\n]*/es_username: elastic/" /etc/elastalert/elastalert.yml
sed -ri "s/#es_password:[^\r\n]*/es_password: $ELASTIC_PWD/" /etc/elastalert/elastalert.yml

# ELASTICSEARCH URL
sed -ri "s/es_host:[^\r\n]*/es_host: $ELASTICSEARCH_HOST/" /etc/elastalert/elastalert.yml
sed -ri "s/es_port:[^\r\n]*/es_port: $ELASTICSEARCH_PORT/" /etc/elastalert/elastalert.yml
sed -ri "s/#use_ssl:[^\r\n]*/use_ssl: true/" /etc/elastalert/elastalert.yml
sed -ri "s/#verify_certs:[^\r\n]*/verify_certs: false/" /etc/elastalert/elastalert.yml

# RULES
sed -ri "s/rules_folder:[^\r\n]*/rules_folder: \/usr\/share\/elastalert\/rules/" /etc/elastalert/elastalert.yml
