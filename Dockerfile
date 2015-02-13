# Garrys Mod - Tf2 Content 
#
# VERSION 0.1

FROM bfosberry/steam_base
MAINTAINER bfosberry

# prep data folder
RUN mkdir -p /opt/mods/tf2-content
WORKDIR /opt/mods/tf2-content

RUN /opt/steam/steamcmd.sh +force_install_dir "/opt/mods/tf2-content/" +login anonymous  +app_update 232250 +quit
ENTRYPOINT /bin/bash
VOLUME /opt/mods/tf2-content
