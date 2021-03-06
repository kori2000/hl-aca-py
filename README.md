# Hyperledger Aries Cloud Agent - Python

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/kori2000/hl-aca-py/blob/main/LICENSE)
[![version](https://img.shields.io/badge/version-0.7.0-blue)](https://github.com/hyperledger/aries-cloudagent-python/releases/tag/0.7.0)
[![Unicorn](https://img.shields.io/badge/nyancat-approved-ff69b4.svg)](https://www.youtube.com/watch?v=QH2-TGUlwu4)
[![arm-support](https://img.shields.io/badge/arm%20v7-1abc9c.svg)](hhttps://hub.docker.com/r/eorituz/aries-cloudagent)


A Hyperledger Aries Cloud Agent with custom settings, connected to IDUnion Test Ledger.

## Hyperledger Indy transaction explorer
https://idunion.esatus.com/home/IDunion_Test

## Hyperledger ACA-PY
https://github.com/hyperledger/aries-cloudagent-python

## Docker Image
https://hub.docker.com/repository/docker/koraltan/aca-py

## Usage

```python
# Building Cloudagent
make build

# Starting Cloudagent
make up

# Stopping Cloudagent
make down
```

## Raspberry PI Support
In the arm directory, an executable version of the ACA-PY with version 0.58. can be started on a Raspberry PI 4 with 4GB RAM.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
