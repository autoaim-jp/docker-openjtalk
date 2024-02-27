default: start

setup:
	#pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon
	pacmd load-module module-native-protocol-unix socket=/tmp/pulseaudio.socket
	pulseaudio --check -v 
	docker compose build

start:
	docker compose up -d
	# docker attach docker-openjtalk-container
	docker exec -it docker-openjtalk-container /bin/bash

stop:
	docker compose down
	pulseaudio --kill

