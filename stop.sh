  
#!/bin/bash
clear

echo ""
echo " * * * Stopping Hyperledger Cloud Agent * * * "
echo ""

echo " ---> Starting shutdown..."
docker-compose down
rm -rf log.txt
# docker volume rm hl-indy-pool_genesis
echo ""

echo " ---> Done."