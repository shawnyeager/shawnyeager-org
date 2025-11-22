#!/bin/bash

set -e
set -o pipefail

# Install Go
echo "Installing Go 1.25.3..."
curl -sL https://go.dev/dl/go1.25.3.linux-amd64.tar.gz -o go.tar.gz
tar -C /tmp -xzf go.tar.gz
export PATH=/tmp/go/bin:$PATH
export GOPATH=/tmp/go

# Verify Go installation
go version

# Build site with Hugo
echo "Building site with Hugo..."
hugo --gc --minify
