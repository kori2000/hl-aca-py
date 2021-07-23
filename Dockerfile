# Hyperledger Aries Cloud Agent - Python
# Build from source: https://github.com/hyperledger/aries-cloudagent-python/blob/main/docker/Dockerfile.run
FROM koraltan/aca-py:0.7.0

# Configuration & Settings
ADD config/agent-args.yaml .

# Blockchain Ledger
ADD config/genesis.json .