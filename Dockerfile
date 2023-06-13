FROM apache/spark:3.4.0 

ENV PATH=$PATH:/opt/spark/sbin

RUN pip install pyspark==3.4.0
RUN apt update;

RUN apt install nano systemctl telnet -y

COPY spark.service /usr/lib/systemd/system/spark.service
RUN systemctl enable spark
RUN echo 'export PATH=$PATH:/opt/spark/sbin' >> /root/.bashrc

COPY spark /spark
COPY entrypoint /entrypoint
ENTRYPOINT /entrypoint