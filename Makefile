build:
	@ docker build -t omab/simpless .

run:
	@ docker run \
		--rm -v `pwd`:/app -w /app \
		-e SIMPLESS_WATCH=yes \
		-e SIMPLESS_TARGET=example \
		-ti omab/simpless

publish: build
	@ docker push omab/simpless

.PHONY: build run publish
