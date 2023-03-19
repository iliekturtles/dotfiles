#!/bin/bash
cargo asm "$@" 2>&1 | less -RS
