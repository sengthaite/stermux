#!/data/data/com.termux/files/usr/bin/sh

export REPO_URL="https://sengthaite.github.io/stermux"

apt update

if ! command -v gpg &> /dev/null
then
    echo "gpg command not found, installing gnupg"
    apt install gnupg
fi

if ! command -v curl &> /dev/null
then
    echo "curl command not found, installing curl"
    apt install curl
fi

echo "Make sources.list.d if not exist"
mkdir -p $PREFIX/etc/apt/sources.list.d/

curl -L "$REPO_URL/stermux.gpg" | gpg --dearmor | tee /data/data/com.termux/files/usr/etc/apt/trusted.gpg.d/stermux.gpg > /dev/null

echo "deb $REPO_URL termux extras" > $PREFIX/etc/apt/sources.list.d/stermux.list

apt update
