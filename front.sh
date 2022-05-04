#!/bin/bash
docker stop frontcont17 
docker rm frontcont17
docker run -i --name frontcont17 --network=gomatha --ip 192.168.1.4  -p 5050:5050  frontimg17 /bin/bash
docker run -it --name frontcont17 frontimg17 /bin/bash
docker start frontcont17 
docker exec frontcont17  ./startup.sh
