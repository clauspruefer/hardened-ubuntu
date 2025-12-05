#!/bin/sh

apt-get update -y
apt-get upgrade -y

# install usbguard
apt-get install -qy usbguard

# install dnscrypt-proxy
apt-get install -qy dnscrypt-proxy

# install libnss-resolve for command line resolving
apt-get install -qy libnss-resolve

# copy nsswitch config
cp ./nsswitch.conf /etc/nsswitch.conf

# copy systemd resolved.conf (using local dnscrypt-proxy)
cp ./resolved.conf /etc/systemd/resolved.conf

# copy dnscrypt-config (next-dns template)
cp ./dnscrypt-proxy.toml /etc/dnscrypt-proxy/dnscrypt-proxy.toml

# disable / mask dnscrypt resolvconf service
systemctl disable dnscrypt-proxy-resolvconf.service
systemctl mask dnscrypt-proxy-resolvconf.service
