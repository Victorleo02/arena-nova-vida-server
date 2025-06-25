FROM ubuntu:22.04

RUN apt update && apt install -y libgl1

COPY Arena_Nova_Vida.x86_64 /app/Arena_Nova_Vida.x86_64
COPY Arena_Nova_Vida.pck /app/Arena_Nova_Vida.pck
COPY start.sh /app/start.sh

WORKDIR /app
RUN chmod +x Arena_Nova_Vida.x86_64 start.sh

CMD ["bash", "start.sh"]
