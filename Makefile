DOCKER_NAME=galtashma/vapid
SITE_DIR=/home/app/site

pull-docker:
	docker pull ${DOCKER_NAME}
build-docker:
	docker build -t ${DOCKER_NAME} .
build-docker-no-cache:
	docker build --no-cache -t ${DOCKER_NAME} .
run:
	docker run -p 3000:3000 -v ${PWD}/site:${SITE_DIR} -it  ${DOCKER_NAME} 
build:
	echo "TODO!"
publish:
	echo "TODO!"
clean:
	rm -rf site && mkdir site/ && touch site/.keep
