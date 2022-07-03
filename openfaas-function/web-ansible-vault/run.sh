#!/bin/sh

# STD_IN=$(</dev/stdin)
# echo $STD_IN
# or cat -

touch /tmp/data /tmp/vault_password.txt
chmod 666 /tmp/data /tmp/vault_password.txt
cat /dev/stdin > /tmp/data

#printenv Http_Query
VAULT_PASSWORD=$(echo ${Http_Query} | cut -f 2 -d "=")
echo ${VAULT_PASSWORD} > /tmp/vault_password.txt

ansible-vault encrypt /tmp/data --vault-password-file=/tmp/vault_password.txt --output - | tail -n +1
