#!/bin/bash
TERMINFO=$MSYS_TERMINFO cargo build --color always "$@" 2>&1 | less -RS
