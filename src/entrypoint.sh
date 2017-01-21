#!/bin/bash

set -m
/run/config/restore_config.sh
/run/config/edit_config.sh

/run/misc/wait_for_elasticsearch.sh

/run/config/es_index.sh

$@ &

fg