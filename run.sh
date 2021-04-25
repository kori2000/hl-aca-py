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
    cd ./aries-cloudagent-python/scripts
    docker build -t aca-py -f ../docker/Dockerfile.run .. >> log.txt
    cd ../..
    echo ""
fi

echo " ---> Starting Agent [A]..."
docker run --name agent_a -p 4000:8080 -p 8000:8000 aca-py:latest start --wallet-type indy --seed=000000000000000000000000Trustee1 --wallet-key password --wallet-name afj-wallet --genesis-url http://192.168.178.10:4200/local-genesis.txn --inbound-transport http 0.0.0.0 8000 --outbound-transport http --admin-insecure-mode --admin 0.0.0.0 8080 --endpoint http://192.168.178.10:8000 --label agent_a --auto-store-credential --auto-accept-invites >> log.txt