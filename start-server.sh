#!/bin/sh

bin/forever start bin/sinopia -c ./config/sinopia_0.yaml
bin/forever start bin/sinopia -c ./config/sinopia_1.yaml
bin/forever start bin/sinopia -c ./config/sinopia_2.yaml
bin/forever start bin/sinopia -c ./config/sinopia_3.yaml

# to use 80 port
sudo bin/loadbalancer start --config ./config/loadbalancer.json
