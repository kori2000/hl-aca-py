#!/bin/bash
clear

echo ""
echo " * * * Setup Hyperledger Aries Cloud Agent * * * "
echo ""

read_env() {
    VAR=$(grep $1 $2 | xargs)
    IFS="=" read -ra VAR <<< "$VAR"
    echo ${VAR[1]}
}
# "$(read_env AGENT_NAME .env)"

if [[ "$(docker images -q aca-py:latest 2> /dev/null)" == "" ]]; then
    echo " ---> Creating Aries Cloud Agent [ACA-PY]..."
    cd ./aca-py/scripts
    docker build -t aca-py -f ../docker/Dockerfile.run .. >> log.txt
    cd ../..
    echo ""
fi

echo " ---> Starting [DID-AGENT-01] ..."
echo ""
docker run --name did-agent-01 -p 4000:8080 -p 8000:8000 -d aca-py:latest start \
 --admin 0.0.0.0 8080 \
 --admin-insecure-mode \
 --auto-accept-invites \
 --auto-store-credential \
 --genesis-url http://railchain.beta.de.com:4200/local-genesis.txn \
 --ledger-pool-name railchainpool \
 --wallet-type indy \
 --seed x \
 --wallet-name railchainwallet \
 --wallet-key railpass \
 --inbound-transport http 0.0.0.0 8000 \
 --outbound-transport http \
 --endpoint http://0.0.0.0:8000 \
 --label DID-AGENT-01

sleep 4s

echo ""
docker logs did-agent-01