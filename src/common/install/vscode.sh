#!/usr/bin/env bash
set -e
set -u

echo "Install VS code"

apt-get update
apt-get install -y curl apt-transport-https

cd 
curl -sSL https://packages.microsoft.com/keys/microsoft.asc -o microsoft.asc

apt-key add microsoft.asc
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" |  tee /etc/apt/sources.list.d/vscode.list
apt-get update
apt-get install -y code

update-alternatives --set editor /usr/bin/code

