USER := nathanleclaire
COMPILE_IMAGE := "$(USER)/hnbuild"
TAG := "latest"
RUN_IMAGE := "$(USER)/hn:$(TAG)"

default: compile

push:
	docker push $(RUN_IMAGE)

compile: compilerbuild
	docker build -t $(RUN_IMAGE) -f Dockerfile.run .

compilerbuild:
	docker build -t $(COMPILE_IMAGE) -f Dockerfile.build .
	docker run $(COMPILE_IMAGE) >hn
