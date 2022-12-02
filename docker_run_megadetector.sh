#!/bin/bash

IMG_FOLDER=$1
JSON_PATH=$2

docker run --rm \
    -v $1:/images \
    -v $2:/jsonPath \
    --gpus all \
    megadetector-contained \
    python /app/cameratraps/detection/run_detector_batch.py \
        "/app/megadetector/md_v5a.0.0.pt" \
        /images \
        /jsonPath/md_out.json \
        --recursive \
        --checkpoint_frequency 1000
        
        
# /data/P-Prosjekter/31250000_bevaringsbiologi_fjellrev/DATA/VILTKAMERA/BILDER/TEST_MEGADETECTOR/IMAGES
