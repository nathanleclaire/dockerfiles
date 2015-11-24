USER := nathanleclaire
TAG := latest
IMAGE := pinger

FULLNAME := $(USER)/$(IMAGE):$(TAG)

default: build

clean:
	docker rmi $(FULLNAME)

build:
	docker build -t $(FULLNAME) $(IMAGE)

tag:
	docker tag -f $(USER)/$(IMAGE) $(FULLNAME)

push:
	docker push $(FULLNAME)
