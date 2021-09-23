#!/bin/bash

cat >>~/.gitconfig <<EOF
[pager]
	diff = cat
[core]
	editor = vim
	pager = cat

EOF
