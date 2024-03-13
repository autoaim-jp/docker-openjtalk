default: start

setup:
	#pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon
	# /tmp/pulseaudio.client.conf
	pacmd load-module module-native-protocol-unix socket=/tmp/pulseaudio.socket
	pulseaudio --check -v 
	docker compose build

start:
	docker compose up -d
	# docker attach docker-openjtalk-container
	# docker exec -it docker-openjtalk-container /bin/bash
	docker exec -it docker-openjtalk-container /app/run.sh

stop:
	docker compose down --volumes
	pulseaudio --kill
	# sudo rm /tmp/pulseaudio.client.conf
	# sudo rm -rf /tmp/pulseaudio.socket

