FROM ubuntu:22.04

RUN apt update && apt install -y libgl1

COPY Arena\ Nova\ Vida.x86_64 /app/Arena\ Nova\ Vida.x86_64
COPY Arena\ Nova\ Vida.pck /app/Arena\ Nova\ Vida.pck
COPY start.sh /app/start.sh

WORKDIR /app
RUN chmod +x Arena\ Nova\ Vida.x86_64 start.sh

CMD ["bash", "start.sh"]
