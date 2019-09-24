#!/bin/bash

# lynx config file:
# /usr/local/etc/lynx.cfg@ -> ../Cellar/lynx/2.8.9rel.1_1/etc/lynx.cfg
# NO_PROXY -> list websites which you don't want to use a proxy on
# normally internal sites which are secure


# lynx options URL

# -dump option used to dump website text to the STDOUT
lynx -dump https://projecteuler.net/archives

# Browsing
lynx https://projecteuler.net/archives

