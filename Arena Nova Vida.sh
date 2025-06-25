#!/bin/sh
echo -ne '\033c\033]0;Arena Nova Vida\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Arena Nova Vida.x86_64" "$@"
