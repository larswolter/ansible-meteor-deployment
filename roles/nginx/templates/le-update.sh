#!/bin/bash

systemctl stop nginx.service
/usr/bin/letsencrypt renew
systemctl start nginx.service
