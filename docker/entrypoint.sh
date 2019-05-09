#!/bin/sh
wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-24_H-1024_A-16.zip -O bert_model.zip && \
mkdir /model && \
unzip -j bert_model.zip -d /model && \
bert-serving-start -num_worker=$1 -model_dir /model -http_port 8125
