FROM jrottenberg/ffmpeg:4.0-ubuntu as Basic

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:libreoffice/ppa

ENV NODE_ENV production
# Fix issue:  Fontconfig error: Cannot load default config file
ENV FONTCONFIG_PATH=/etc/fonts 

# Install Packages 
RUN apt-get update && apt-get install -y \
    curl \
    libreoffice \
    imagemagick \ 
    ghostscript \ 
    unoconv \ 
    hyphen-fr \
    hyphen-de \
    hyphen-en-us \
    hyphen-it \
    hyphen-ru \
    fonts-dejavu \
    fonts-dejavu-core\
    fonts-dejavu-extra \
    fonts-dustin \
    fonts-f500\
    fonts-fanwood\
    fonts-freefont-ttf \
    fonts-liberation \
    fonts-lmodern\
    fonts-lyx\
    fonts-sil-gentium\
    fonts-texgyre\
    fonts-tlwg-purisa\
    --fix-missing \
    --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT [""]


