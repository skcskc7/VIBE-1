#!/usr/bin/env bash

mkdir -p data
cd data
gdown --id 1_NpGp7PXfqt6BOMrc-tfX2la7v3wANR_


unzip vibe_data.zip
rm vibe_data.zip

# dw - download F/M SMPL models

gdown --id 1MejOpR94dm5BKhMwVjguyjn-FoZBepgd
gdown --id 1_8izI5wFV_S7gP0ZKeSw-O_ugFt55U8s

cd ..

mv data/vibe_data/sample_video.mp4 .
mkdir -p $HOME/.torch/models/
mv data/vibe_data/yolov3.weights $HOME/.torch/models/
