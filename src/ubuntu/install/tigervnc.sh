#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"
# wget -qO- https://sourceforge.net/projects/tigervnc/files/stable/1.11.0/tigervnc-1.11.0.x86_64.tar.gz | tar xz --strip 1 -C /
# 
apt-get install -y tigervnc-standalone-server
