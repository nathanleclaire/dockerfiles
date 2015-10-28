#!/bin/bash

while ! journalctl -f -u "$1"; do sleep 1; done
