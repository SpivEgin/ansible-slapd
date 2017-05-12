#!/bin/bash

if ! [ -f /etc/debian_version ] && ! which netstat >> /dev/null; then
  yum -y install net-tools
fi

if netstat -tulpen | grep 389 ; then
  echo "LDAP Protocol available"
else
  echo "LDAP Protocol not available"
fi

if netstat -tulpen | grep 636; then
  echo "LDAPS Protocol available"
else
  echo "LDAPS Protocol not available"
fi

if [ -f /usr/local/var/ldapi ]; then
  echo "LDAPI Protocol available"
else
  echo "LDAPI Protocol not available"
fi
