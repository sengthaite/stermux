#!/data/data/com.termux/files/usr/bin/sh

termux-apt-repo --sign debs docs

gpg --export $(gpg --list-keys --with-colons | grep "^pub" | cut -d: -f5) > docs/stermux.gpg
