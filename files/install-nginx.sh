#!/bin/bash
apt-get update -y
apt-get install -y -f nginx
service nginx start