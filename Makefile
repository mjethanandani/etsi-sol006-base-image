container=fredrikjanssonse/etsi-sol006-base-image

.PHONY: container push run

VER=6.6

container:
	docker build --build-arg CONFD_VER=$(VER) -t $(container):$(VER) .

push:
	docker push $(container):$(VER)

run:
	docker run --rm -it $(container):$(VER) bash
