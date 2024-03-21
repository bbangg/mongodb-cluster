docker exec -it shard01-a /bin/sh -c "mongosh < /scripts/init-shard01.js"
docker exec -it shard02-a /bin/sh -c "mongosh < /scripts/init-shard02.js"
docker exec -it shard03-a /bin/sh -c "mongosh < /scripts/init-shard03.js"