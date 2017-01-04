FROM r-base:3.3.1
MAINTAINER Renato Biancalana da Silva <renato.biancalana.silva@gmail.com>

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get update && \
    apt-get install -y default-jdk libssl-dev libcurl4-openssl-dev && \
    Rscript -e "install.packages('rJava', type='source')" && \
    apt-get clean 

CMD ["R"]
