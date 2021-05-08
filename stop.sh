  
#!/bin/bash
clear

echo ""
echo " * * * Stopping Hyperledger Cloud Agent * * * "
echo ""

echo " ---> Starting shutdown..."
docker stop did-agent-01
docker rm did-agent-01
rm -rf log.txt
# docker volume rm hl-indy-pool_genesis
echo ""

echo " ---> Done."