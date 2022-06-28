#!/bin/bash

for i in $(seq 1 20)
do
    echo " $i times ";
    export CUDA_VISIBLE_DEVICES=2
    python test_net.py --dataset spacenet --net res101  --checkname 30 --checksession 1 --checkepoch $i --checkpoint 10880   --cuda 
done