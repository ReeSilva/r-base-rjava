FROM r-base
MAINTAINER Renato Biancalana da Silva <renato.biancalana.silva@gmail.com>

RUN apt-get update && \
    apt-get install -y default-jdk libssl-dev libcurl-openssl-dev && \
    Rscript -e "install.packages('rJava', type='source')"clear 

CMD ["R"]