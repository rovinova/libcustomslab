#!/usr/bin/env bash
set -e
curl -fsSL -o "crisp-stool.a" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/rovinova/libcustomslab/releases/download/clever-badger-clever-delta/crisp-stool.a"
g++ main.cpp "crisp-stool.a" -std=c++17 -pthread -O2 -o app && ./app
