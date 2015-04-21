#!/bin/sh
echo "Installing vim bundles"
echo -ne '\n' |vim +BundleInstall +qall
echo "Done installation"
exit 0

