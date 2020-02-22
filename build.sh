#!/bin/sh
d="$(dirname $0)"
case "$d" in
    /*) ;;
    *) d="$PWD/$d"
esac
export PATH="$PATH:$d/bin"

mkdir -p dst
ssg5 src dst "$@"
