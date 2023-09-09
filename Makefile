recreate: 
	docker-compose -f ./proxy/docker-compose.yml up -d --force-recreate --remove-orphans
	docker-compose -f ./auth/docker-compose.yml up -d --force-recreate --remove-orphans
	docker-compose -f ./torrent/docker-compose.yml up -d --force-recreate --remove-orphans

down:
	docker-compose -f ./proxy/docker-compose.yml down
	docker-compose -f ./auth/docker-compose.yml down
	docker-compose -f ./torrent/docker-compose.yml down
