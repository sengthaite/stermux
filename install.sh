#!/data/data/com.termux/files/usr/bin/sh

export REPO_URL="https://sengthaite.github.io/stermux"

curl -L "$REPO_URL/stermux.gpg" | gpg --dearmor | tee /data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/stermux.gpg > /dev/null

echo "deb $REPO_URL termux extras" > $PREFIX/etc/apt/sources.list.d/stermux.list

apt update
