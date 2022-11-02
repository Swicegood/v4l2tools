FROM mpromonet/v4l2tools:latest-amd64
RUN apt update && apt install v4l-utils bash -y
ADD start-card.sh /root
RUN chmod +x /root/start-card.sh
