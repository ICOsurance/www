#!/usr/bin/env bash

set -e # halt script on error

bundle exec jekyll build
mv _site site # looks like deploy phase doesn't like underscores
rm site/*.sh
echo www.icosurance.com > site/CNAME # custom domain