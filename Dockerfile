# Задаю базовый образ
FROM ubuntu:22.04

# Labels
LABEL maintainer="Makarenko Vasilisa"
LABEL version="first and last"

# FastQC
# Установка необходимых пакетов
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y wget unzip default-jdk libfindbin-libs-perl
# Установка самого пакета
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip \
    && unzip fastqc_v0.11.9.zip \
    && rm fastqc_v0.11.9.zip \
    && chmod a+x /FastQC/fastqc


# STAR 
RUN wget https://github.com/alexdobin/STAR/releases/download/2.7.10b/STAR_2.7.10b.zip \
   && unzip STAR_2.7.10b.zip \
   && rm  STAR_2.7.10b.zip \
   && cd STAR_2.7.10b/Linux_x86_64_static \
   && chmod a+x STAR


RUN apt-get update && apt-get -y upgrade && \
	apt-get install -y build-essential wget \
		libncurses5-dev zlib1g-dev libbz2-dev liblzma-dev libcurl3-dev && \
	apt-get clean && apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.16.1/samtools-1.16.1.tar.bz2 \
	&& tar jxf samtools-1.16.1.tar.bz2 \
   && rm samtools-1.16.1.tar.bz2 \
	&& cd samtools-1.16.1 \
	&& ./configure --prefix $(pwd) \
	&& make

#picard
RUN wget https://github.com/broadinstitute/picard/releases/download/2.27.5/picard.jar \
   && chmod a+x picard.jar

#salmon
WORKDIR /docker_main
RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v1.9.0/salmon-1.9.0_linux_x86_64.tar.gz \
   && tar -xzf ./salmon-1.9.0_linux_x86_64.tar.gz \
   && rm salmon-1.9.0_linux_x86_64.tar.gz
RUN cd ./salmon-1.9.0_linux_x86_64/bin \
   && chmod a+x salmon

#Bedtools
ENV bedtools 2.30.0
WORKDIR /docker_main
RUN wget https://github.com/arq5x/bedtools2/releases/download/v2.30.0/bedtools.static.binary \
  && chmod a+x bedtools.static.binary



#MultiQC 
# Устанавливаю python и pip
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install multiqc

# Удаление ненужных файлов
RUN apt-get autoremove \
   && apt-get clean
