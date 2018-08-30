FROM jrottenberg/ffmpeg:4.0-ubuntu as Basic

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:libreoffice/ppa

ENV NODE_ENV production
# Fix issue:  Fontconfig error: Cannot load default config file
ENV FONTCONFIG_PATH=/etc/fonts 

# Install the rest of packages
RUN apt-get update && apt-get install -y \
    curl \
    libreoffice \
    imagemagick \ 
    ghostscript \ 
    unoconv \ 
    --fix-missing \
    --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT [""]


