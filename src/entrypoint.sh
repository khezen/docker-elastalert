#!/bin/bash

set -m
/run/miscellaneous/restore_config.sh
/run/miscellaneous/edit_config.sh
$@ &

fg