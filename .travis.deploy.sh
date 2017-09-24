#!/usr/bin/env bash

set -v

TARGET=www.icosurance.com

ssh -i /tmp/deploy_rsa apps1@prod.cmlteam.com "(echo \"\$(date) $TARGET \$(pwd)\" ; rm -rf $TARGET ; mkdir $TARGET) >> /tmp/.deploy 2>&1"
cd _site ; scp -i /tmp/deploy_rsa -C -r * apps1@prod.cmlteam.com:~/$TARGET
