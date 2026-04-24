#!/data/data/com.termux/files/usr/bin/sh

export REPO_URL="https://sengthaite.github.io/stermux"

echo "Make sources.list.d if not exist"
mkdir -p $PREFIX/etc/apt/sources.list.d/

curl -L "$REPO_URL/stermux.gpg" | gpg --dearmor | tee /data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/stermux.gpg > /dev/null

echo "deb $REPO_URL termux extras" > $PREFIX/etc/apt/sources.list.d/stermux.list

apt update
