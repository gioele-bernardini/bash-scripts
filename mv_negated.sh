#!/bin/bash

shopt -s extglob

mv -v !("file1.txt"|"file2.txt") sottocartella/
