DOCKER_IMAGE=demo-flask-app

all: Dockerfile app.py
	$(SUDO) docker build -t appcito/$(DOCKER_IMAGE) .

.PHONY: install clean

install: 
	$(SUDO) docker push appcito/$(DOCKER_IMAGE)

clean:
	rm -f *~ \#*
