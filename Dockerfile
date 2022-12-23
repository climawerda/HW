#Подключаю среду
FROM ubuntu:22.04
# FastQC
#Устанавливаю необходимые библиотеки и обновления
RUN apt-get update && apt-get upgrade -y \
  && apt-get install -y wget unzip default-jdk libfindbin-libs-perl

# Устанавливаю приложение
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip \
    && unzip fastqc_v0.11.9.zip \
    && rm fastqc_v0.11.9.zip \
    && chmod 755 /FastQC/fastqc
ENV PATH "/FastQC:$PATH"

# STAR 
ENV star_version 2.7.10b
WORKDIR /docker_main
ADD https://github.com/alexdobin/STAR/archive/${star_version}.tar.gz /usr/bin/
RUN tar -xzf /usr/bin/${star_version}.tar.gz -C /usr/bin/
RUN cp /usr/bin/STAR-${star_version}/bin/Linux_x86_64/* /usr/local/bin

RUN cd /docker_main / && \
   rm -rf 2.7.0f.tar.gz && \
   apt-get autoremove -y && \
   apt-get autoclean -y  && \
   apt-get clean

RUN apt-get update && apt-get -y upgrade && \
	apt-get install -y build-essential wget \
		libncurses5-dev zlib1g-dev libbz2-dev liblzma-dev libcurl3-dev && \
	apt-get clean && apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /usr/src

#Samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.16.1/samtools-1.16.1.tar.bz2 && \
	tar jxf samtools-1.16.1.tar.bz2 && \
	rm samtools-1.16.1.tar.bz2 && \
	cd samtools-1.16.1 && \
	./configure --prefix $(pwd) && \
	make

ENV PATH=${PATH}:/usr/src/samtools-1.16.1 

#picard
ENV picard v.2.27.5
RUN apt-get update && apt-get install -y python3 python3-pip
# Add the picard source files to the container
ADD . /usr/src/picard
WORKDIR /usr/src/picard
#Install picard
RUN pip install numpy matplotlib numexpr scipy
RUN pip install python-picard

#salmon
ENV salmon v.1.9.0
WORKDIR /docker_main
ADD https://github.com/COMBINE-lab/salmon/releases/download/v1.9.0/salmon-1.9.0_linux_x86_64.tar.gz /usr/bin/
RUN tar -xzf /usr/bin/salmon-1.9.0_linux_x86_64.tar.gz -C /usr/bin/
RUN cp /usr/bin/salmon-1.9.0_linux_x86_64/bin/* /usr/local/bin

RUN cd /docker_main / && \
   rm -rf salmon-1.9.0_linux_x86_64.tar.gz && \
   apt-get autoremove -y && \
   apt-get autoclean -y  && \
   apt-get clean


WORKDIR /usr/src

#Bedtools
ENV bedtools 2.30.0
WORKDIR /docker_main
RUN wget https://github.com/arq5x/bedtools2/releases/download/v2.30.0/bedtools.static.binary && \
  chmod a+x bedtools.static.binary


RUN cd /docker_main / && \
   apt-get autoremove -y && \
   apt-get autoclean -y  && \
   apt-get clean


#MultiQC 
ENV MultiQC v.1.13
RUN apt-get update && apt-get install -y python3 python3-pip
# Добавляю файлы
ADD . /usr/src/multiqc
WORKDIR /usr/src/multiqc
# Устанавливаю
RUN pip install multiqc
