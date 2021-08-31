#!/bin/bash
echo "Installing TPSH..."
cp -r -v home/.tpsh ~/
cp -v -r home/.tpshrc ~/
cp -L -v bin/tpsh /usr/local/sbin
echo "Done"
