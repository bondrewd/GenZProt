#!/bin/bash

MPATH=../ckpt/model_seed_12345
ca_trace_name=PED00055_CA_trace
ca_trace_path=../data/${ca_trace_name}.pdb
top_path=../data/PED00055.pdb
uv run \
  inference.py \
  -load_model_path $MPATH \
  -ca_trace_path $ca_trace_path \
  -topology_path $top_path
