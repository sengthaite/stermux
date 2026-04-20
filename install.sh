#!/data/data/com.termux/files/usr/bin/sh

export REPO_URL="https://sengthaite.github.io/stermux"

curl -L "$REPO_URL/stermux.gpg" | gpg --dearmor | tee /data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/stermux.gpg > /dev/null

echo "deb [signed-by=/data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/stermux.gpg] $REPO_URL ./" > $PREFIX/etc/apt/sources.list.d/stermux.list

pkg update
