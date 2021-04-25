#!/bin/bash
TERMINFO=$MSYS_TERMINFO cargo run --color always --example "$@" 2>&1 | less -RS
