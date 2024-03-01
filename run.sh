#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=1cc56057f48310145d34
export DRONE_GITHUB_CLIENT_SECRET=8d9dc4a2811667c32dbcea5b9de1013391057df4
export DRONE_GITHUB_ADMIN=tqhuy812
export DRONE_SERVER_HOST=f506-2a02-8428-f-5b01-3b78-85a8-dfa6-8256.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
