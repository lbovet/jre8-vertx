FROM java:8-jre
WORKDIR /usr/local/vertx
RUN apt-get update && \
    apt-get install -y curl && \
    curl https://bintray.com/artifact/download/vertx/downloads/vert.x-2.1.5.tar.gz && \
    tar xzf vert.x-2.1.5.tar.gz && rm vert.x-2.1.5.tar.gz && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
CMD [ "bin/vertx" ]
    
