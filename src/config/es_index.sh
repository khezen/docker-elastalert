#!/bin/bash
echo "$elastic\n" | echo "$ELASTIC_PWD\n" | elastalert-create-index --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT --index elastalert_status --old-index "" --url-prefix "" --no-ssl