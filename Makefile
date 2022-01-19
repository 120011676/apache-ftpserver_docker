VERSION?=1.1.2
PROJECT_NAME=apache-ftpserver
DOCKER_HOSTNAME?=
DOCKER_IMAGE_NAME=${DOCKER_HOSTNAME}120011676/${PROJECT_NAME}
DOCKER_IMAGE_NAME_TEST=${DOCKER_IMAGE_NAME}:test
DOCKER_IMAGE_NAME_VERSION=${DOCKER_IMAGE_NAME}:${VERSION}
image:
	docker build -t ${DOCKER_IMAGE_NAME} .
image_test:
	docker build -t ${DOCKER_IMAGE_NAME_TEST} .
image_version:
	docker build -t ${DOCKER_IMAGE_NAME_VERSION} .
push: image
	docker push ${DOCKER_IMAGE_NAME}
push_test: image_test
	docker push ${DOCKER_IMAGE_NAME_TEST}
push_version: image_version
	docker push ${DOCKER_IMAGE_NAME_VERSION}
