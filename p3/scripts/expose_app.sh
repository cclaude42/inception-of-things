#!/bin/bash

# Access app
sudo kubectl port-forward service/cclaude-playground -n dev 8888:8888 --address 0.0.0.0