FROM java:8-jre
WORKDIR /usr/local
RUN curl -sL -o vertx.tgz https://bintray.com/artifact/download/vertx/downloads/vert.x-2.1.5.tar.gz && \
    tar xzf vertx.tgz && rm vertx.tgz && mv vert.x-2.1.5 vertx
CMD [ "/usr/local/verx/bin/vertx" ]
    
