#!/usr/bin/bash

export PATH=~/.local/bin:$PATH
molecule test -s kvm
