#!/bin/bash
TERMINFO=$MSYS_TERMINFO cargo clippy --color always "$@" 2>&1 | less -RS
