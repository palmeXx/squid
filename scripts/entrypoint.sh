#!/bin/bash

set -e

if [[ "$SQUID_SSL_BUMP" == "true" && ! -e /var/lib/ssl_db ]]; then
  echo "SQUID SSL_BUMP activated";
  /usr/lib/squid/security_file_certgen -c -s /var/lib/ssl_db -M 4MB
fi

squid -NYCd 1 $@ 