#!/bin/sh
real_home=$(getent passwd "$(id -u)" | cut -d ':' -f 6)
cd "$real_home" && mscore "$@"
