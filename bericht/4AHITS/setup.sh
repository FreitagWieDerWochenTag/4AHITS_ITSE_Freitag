#!/bin/bash
set -e

docker build -t pwn-env .

docker rm -f pwn 2>/dev/null || true

docker run -it --rm --name pwn -v "$(pwd):/code" -w /code pwn-env bash
