#!/usr/bin/env bash

hugo --i18n-warnings server &

open -a "Google Chrome.app" "http://localhost:1313"

fg
