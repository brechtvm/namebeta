FROM resin/armv7hf-golang

# docker build --rm -f Dockerfile -t scraper_generic:latest .
# https://docs.resin.io/runtime/resin-base-images/?ref=dockerhub
LABEL maintainer "brecht.vanmaldergem@gmail.com"

RUN [ "cross-build-start" ]

#RUN sudo apt-get update
#RUN sudo apt-get install build-essential chrpath libssl-dev libxft-dev

#RUN sudo apt-get install -y phantomjs python

#RUN mkdir "/home/namebeta"

RUN cd "/home/"

RUN git clone "https://github.com/brechtvm/namebeta.git"

RUN cd "/home/namebeta"

ENTRYPOINT [ "/home/namebeta", "/home/scraper/casperjs/bin/scrape.js", "--verbose" ]

RUN [ "cross-build-end" ]