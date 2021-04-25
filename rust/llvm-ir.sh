#!/bin/bash
cargo llvm-ir "$@" 2>&1 | less -RS
