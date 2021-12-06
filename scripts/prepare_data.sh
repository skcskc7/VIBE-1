#!/usr/bin/env bash

mkdir -p data
cd data
gdown "https://drive.google.com/uc?id=1untXhYOLQtpNEy4GTY_0fL_H-k6cTf_r"
unzip vibe_data.zip
rm vibe_data.zip

# dw - download F/M SMPL models

gdown --id 1hC_hgJCPtFQ72Pv5cnjr0BaieNAbb7zn
gdown --id 1xxL-L0cL85jUz8MxfSEyQ5ai39E63X4r

cd ..

mv data/vibe_data/sample_video.mp4 .
mkdir -p $HOME/.torch/models/
mv data/vibe_data/yolov3.weights $HOME/.torch/models/
