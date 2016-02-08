FROM cfssl/cfssl

WORKDIR /root/manage/
COPY . .
RUN apt-get update \
	&& apt-get install -y vim \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
