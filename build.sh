#!/bin/bash
echo "Building torii Image"
docker build -f Dockerfile .  -t bigsofatech/torii:$1
docker push bigsofatech/torii:$1
