#!/usr/bin/env bash

set -v

bundle exec jekyll build
rm _site/*.sh _site/*.enc