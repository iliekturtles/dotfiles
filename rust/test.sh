#!/bin/bash
TERMINFO=$MSYS_TERMINFO cargo test --color always "$@" 2>&1 | less -RS
