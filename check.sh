#!/usr/bin/bash


echo 'export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
source ~/.bashrc
sudo ldconfig

CUDA_VERSION=$(nvcc --version)

if [[ "$CUDA_VERSION" == *"release 10.1"* ]]
then
  echo "up to date"
else
  echo "issue..."
fi
