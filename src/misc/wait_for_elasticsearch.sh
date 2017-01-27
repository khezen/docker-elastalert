#!/bin/bash

RET=1
while [[ RET -ne 0 ]]; do
  echo "Stalling for Elasticsearch..."
  echo $(curl -XGET -k -u "elastic:$ELASTIC_PWD" "https://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/")
  curl -XGET -k -u "elastic:$ELASTIC_PWD" "https://$ELASTICSEARCH_HOST:$ELASTICSEARCH_PORT/" >/dev/null 2>&1
  RET=$?
  sleep 5
done
sleep 20