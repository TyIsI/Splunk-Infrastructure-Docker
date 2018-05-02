FROM ubuntu:xenial

RUN apt -y update && apt -y upgrade && apt -y install curl wget

RUN wget -O splunk_insights_infrastructure-1.0.0-3c8a5dcd15be-linux-2.6-amd64.deb 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=1.0.0&product=sii&filename=splunk_insights_infrastructure-1.0.0-3c8a5dcd15be-linux-2.6-amd64.deb&wget=true' && dpkg -i splunk_insights_infrastructure-1.0.0-3c8a5dcd15be-linux-2.6-amd64.deb

EXPOSE 8000/tcp 8089/tcp 8191/tcp 9997/tcp 1514 8088/tcp

WORKDIR /opt/splunk

VOLUME [ "/opt/splunk/etc", "/opt/splunk/var" ]
