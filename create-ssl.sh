#!/bin/bash
## A ugly script
rm server.crt server.key
certbot delete --cert-name streaming.jvlan.ch
certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials ~/.secrets/certbot/cloudflare.ini \
  -d streaming.jvlan.ch \
  --key-type rsa
ln -s /etc/letsencrypt/live/streaming.jvlan.ch/privkey.pem server.key
ln -s /etc/letsencrypt/live/streaming.jvlan.ch/cert.pem server.crt
