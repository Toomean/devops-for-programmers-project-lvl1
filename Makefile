server:
	npx nodos server

test:
	npm -s test

up:
	docker-compose up -d

down:
	docker-compose down

build-image:
	docker build . -f Dockerfile.production -t toomean/devops-for-programmers-project-lvl1

push-image:
	docker push toomean/devops-for-programmers-project-lvl1
