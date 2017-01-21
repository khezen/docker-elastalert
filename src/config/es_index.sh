#!/bin/bash

echo "$ELASTIC_PWD\r" | echo "$elastic\r" | elastalert-create-index --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT --index elastalert_status --old-index "" --url-prefix "" --ssl --no-verify-certs


#  /usr/lib/python2.7/getpass.py:83: GetPassWarning: Can not control echo on the terminal.
# elastalert_1     |   passwd = fallback_getpass(prompt, stream)
# elastalert_1     | Warning: Password input may be echoed.
# elastalert_1     | Enter optional basic-auth password (or leave blank): Traceback (most recent call last):
# elastalert_1     |   File "/usr/local/bin/elastalert-create-index", line 11, in <module>
# elastalert_1     |     load_entry_point('elastalert==0.1.6', 'console_scripts', 'elastalert-create-index')()
# elastalert_1     |   File "/usr/local/lib/python2.7/dist-packages/elastalert-0.1.6-py2.7.egg/elastalert/create_index.py", line 70, in main
# elastalert_1     | Enter optional basic-auth username (or leave blank):     password = getpass.getpass('Enter optional basic-auth password (or leave blank): ')
# elastalert_1     |   File "/usr/lib/python2.7/getpass.py", line 83, in unix_getpass
# elastalert_1     |     passwd = fallback_getpass(prompt, stream)
# elastalert_1     |   File "/usr/lib/python2.7/getpass.py", line 118, in fallback_getpass
# elastalert_1     |     return _raw_input(prompt, stream)
# elastalert_1     |   File "/usr/lib/python2.7/getpass.py", line 135, in _raw_input
# elastalert_1     |     raise EOFError
# elastalert_1     | EOFError


#  /usr/lib/python2.7/getpass.py:83: GetPassWarning: Can not control echo on the terminal.
# elastalert_1     |   passwd = fallback_getpass(prompt, stream)
# elastalert_1     | Warning: Password input may be echoed.
# elastalert_1     | Enter optional basic-auth password (or leave blank): Traceback (most recent call last):
# elastalert_1     |   File "/usr/local/bin/elastalert-create-index", line 11, in <module>
# elastalert_1     |     load_entry_point('elastalert==0.1.6', 'console_scripts', 'elastalert-create-index')()
# elastalert_1     |   File "/usr/local/lib/python2.7/dist-packages/elastalert-0.1.6-py2.7.egg/elastalert/create_index.py", line 70, in main
# elastalert_1     |     password = getpass.getpass('Enter optional basic-auth password (or leave blank): ')
# elastalert_1     |   File "/usr/lib/python2.7/getpass.py", line 83, in unix_getpass
# elastalert_1     |     passwd = fallback_getpass(prompt, stream)
# elastalert_1     |   File "/usr/lib/python2.7/getpass.py", line 118, in fallback_getpass
# elastalert_1     |     return _raw_input(prompt, stream)
# elastalert_1     |   File "/usr/lib/python2.7/getpass.py", line 135, in _raw_input
# elastalert_1     |     raise EOFError
# elastalert_1     | EOFError
# elastalert_1     | /run/config/es_index.sh: line 2: Enter: command not found