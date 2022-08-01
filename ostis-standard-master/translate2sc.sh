#!/bin/bash
TRANSLATOR_REPO="git@github.com:ostis-apps/tex2sc-translator.git"
TRANSLATOR_PATH="tex2sc-translator"

if [ ! -d "${TRANSLATOR_PATH}" ]; then
    git clone "${TRANSLATOR_REPO}"
    cd "${TRANSLATOR_PATH}"
    git checkout feature
    ./install_deps_ubuntu.sh
    cd ..
fi

if [ -n "$1" ]; then
	args=$(realpath $1)
fi

if [ -n "$2" ]; then
	args="${args} $(realpath $2)"
else
	args="${args} $(realpath "translated_scs")"
fi

if [ -n "$3" ]; then 
	args="${args} $(realpath $3)"
else
	args="${args} $(realpath ".")"
fi

echo $args

if [ -n "$1" ]; then
	cd tex2sc-translator
	python3 main.py $args
	cd ..
fi
