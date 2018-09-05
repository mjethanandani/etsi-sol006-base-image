container=fredrikjanssonse/etsi-sol006-base-image

.PHONY: container push run

container:
	docker build -t $(container) .

push:
	docker push $(container)

run:
	docker run --rm -it $(container) bash
