FROM r-base:4.4.2

LABEL maintainer="Myxogastria0808"
LABEL version="0.0.1"
LABEL description="rix sample container"

USER root

WORKDIR /home

RUN  apt update -y \
    && apt install libcurl4-openssl-dev -y \
    && R -e 'install.packages("rix")'

