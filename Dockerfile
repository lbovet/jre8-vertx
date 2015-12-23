FROM java:8-jre
WORKDIR /usr/local/vertx
RUN curl -sL -o vertx.tgz https://bintray.com/artifact/download/vertx/downloads/vert.x-2.1.5.tar.gz && \
    tar xzf vertx.tgz && rm vertx.tgz 
CMD [ "bin/vertx" ]
    
