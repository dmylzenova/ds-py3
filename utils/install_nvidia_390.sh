#!/bin/sh

sudo apt-get purge nvidia*
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/410.78/NVIDIA-Linux-x86_64-410.78.run
chmod +x NVIDIA-Linux-x86_64-410.78.run
sudo ./NVIDIA-Linux-x86_64-410.78.run

# for tesla k80 wget http://ru.download.nvidia.com/tesla/410.79/NVIDIA-Linux-x86_64-410.79.run
# chmod +x NVIDIA-Linux-x86_64-410.79.run
# sudo ./NVIDIA-Linux-x86_64-410.79.run

nvidia-smi
