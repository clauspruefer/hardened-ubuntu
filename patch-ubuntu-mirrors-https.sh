#!/bin/sh

# replace http url with https
sed -i 's/http:/https:/g' /etc/apt/sources.list.d/ubuntu.sources
