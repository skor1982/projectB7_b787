FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y wget
ENV site_name="www.google.com"
WORKDIR /tmp/test
VOLUME ["/tmp/test"]
CMD [ "sh", "-c", "wget $site_name/favicon.ico" ]
