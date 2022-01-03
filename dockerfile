FROM eclipse-temurin:17-jdk

MAINTAINER jas6377 <https://hub.docker.com/u/jas6377>

ENV TOKEN=BOT_TOKEN_HERE \
    OWNER=OWNER_ID_HERE
    
VOLUME /data/
    
RUN apt-get update \
  && DEBIAN_FRONTEND=nointeractive \
  apt-get install -y \
    curl \
    wget \
  && apt-get clean
    
COPY update.sh /data/update.sh
COPY start.sh /data/start.sh
COPY example_config.txt /data/example_config.txt
    
RUN addgroup --gid 1000 jmbot
RUN adduser --system --shell /bin/false --uid 1000 --ingroup jmbot --home /data jmbot
RUN chown -R jmbot:jmbot /data/
  
WORKDIR /data/
ENTRYPOINT sh update.sh
