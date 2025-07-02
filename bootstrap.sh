#!/bin/bash
# Install Docker & Git, clone this repo, and spin up ComfyUI
apt-get update
apt-get install -y docker.io git
systemctl enable --now docker

# Clone your own repo into /home/ubuntu/comfyui
cd /home/ubuntu
git clone https://github.com/spiralmountain/comfyui-setup.git comfyui
cd comfyui

# Launch via Compose
docker compose up -d
