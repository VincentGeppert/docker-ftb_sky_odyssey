# Copyright 2015-2019 Sean Nelson <audiohacked@gmail.com>
FROM audiohacked/ftb_base:latest
LABEL maintainer="audiohacked@gmail.com"

ARG MODPACK="FTBSkyOdyssey"
ARG FTB_VERSION="1_3_0"
ARG SERVER_FILE="${MODPACK}Server.zip"
# ARG BASE_URL="http://ftb.cursecdn.com/FTB2/modpacks/${MODPACK}"

WORKDIR /minecraft

USER minecraft

RUN wget https://www.curseforge.com/minecraft/modpacks/ftb-sky-odyssey/download/3086759
RUN chmod u+x FTBInstall.sh ServerStart.sh
RUN sed -i '2i /bin/sh /minecraft/CheckEula.sh' /minecraft/ServerStart.sh
RUN /minecraft/FTBInstall.sh
