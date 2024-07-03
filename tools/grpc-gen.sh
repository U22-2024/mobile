#!/bin/bash -eEu

BIN=./tools/bin
VERSION=1.34.0
REPO=https://github.com/U22-2024/proto.git

if [ -z $EXEPATH ]; then
  BUF="https://github.com/bufbuild/buf/releases/download/v${VERSION}/buf-Windows-x86_64.exe"
  CMD="$BIN/buf.exe"
else
  BUF="https://github.com/bufbuild/buf/releases/download/v${VERSION}/buf-Linux-x86_64"
  CMD="$BIN/buf"
fi

if [ ! -f $CMD ]; then
  echo "Downloading buf..."
  mkdir -p ./tools/bin
  curl -sSL \
  "$BUF" \
  -o "$CMD" && \
  chmod +x "$CMD"
  echo "Downloaded buf"
fi

echo "Exporting proto files..."
$CMD export $REPO -o .

echo "Generating proto files..."
$CMD generate