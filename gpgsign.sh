#!/data/data/com.termux/files/usr/bin/sh

termux-apt-repo --sign debs docs

gpg -abs -o ./docs/Release.gpg ./docs/dists/termux/Release

echo "Verifying Release.gpg"

gpg --verify docs/Release.gpg docs/dists/termux/Release
