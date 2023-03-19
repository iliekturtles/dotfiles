#!/bin/bash
cargo fmt "$@" 2>&1 | less -RS
