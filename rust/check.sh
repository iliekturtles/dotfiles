#!/bin/bash
TERMINFO=$MSYS_TERMINFO cargo check --color always "$@" 2>&1 | less -RS
