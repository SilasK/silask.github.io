#!/usr/bin/env bash

process=$(lsof -i :1313 -Fp |head -n1)

#if ![ -z ${var+x} ];
process="${process:1}"
kill -9 $process


hugo --i18n-warnings server &

open -a "Google Chrome.app" "http://localhost:1313"

fg
