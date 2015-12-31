#!/usr/bin/env bash
printf '%s\n%s\n' '192.168.1.35 staghost.com' '192.168.1.35 stawordpress.com' >> /etc/hosts
curl staghost.com
sudo cat /var/log/audit/audit.log | grep nginx | grep denied | audit2allow -M mynginx
sudo semodule -i mynginx.pp
