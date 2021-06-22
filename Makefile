server:
	npx nodos server

test:
	docker run toomean/devops-for-programmers-project-lvl1 npx jest

lint:
	docker run toomean/devops-for-programmers-project-lvl1 npx eslint . --fix

check:
	docker-compose --file docker-compose.yml build
	docker-compose --file docker-compose.yml up --abort-on-container-exit

up:
	docker-compose up -d

down:
	docker-compose down

build-image:
	docker build . -f Dockerfile.production -t toomean/devops-for-programmers-project-lvl1

push-image:
	docker push toomean/devops-for-programmers-project-lvl1
