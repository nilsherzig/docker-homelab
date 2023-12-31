recreate: 
	docker-compose -f ./dnsmasq/docker-compose.yml up -d --force-recreate --remove-orphans
	docker-compose -f ./proxy/docker-compose.yml up -d --force-recreate --remove-orphans
	docker-compose -f ./auth/docker-compose.yml up -d --force-recreate --remove-orphans
	docker-compose -f ./torrent/docker-compose.yml up -d --force-recreate --remove-orphans

down:
	docker-compose -f ./proxy/docker-compose.yml down
	docker-compose -f ./auth/docker-compose.yml down
	docker-compose -f ./torrent/docker-compose.yml down

push: 
	gitleaks detect && git push
