FROM debian

MAINTAINER greenmind.sec@gmail.com

WORKDIR /root
#ADD ./recon /root/

RUN apt-get update

RUN apt-get install net-tools -y

RUN apt-get install curl -y

RUN apt-get install dnsutils -y

RUN apt-get install dnsrecon -y

RUN apt-get install host -y

RUN apt-get install nmap -y

RUN apt-get install whois -y

RUN apt-get install netcat -y

RUN apt-get install fping -y

RUN apt-get install xprobe2 -y

RUN apt-get install net-tools -y

RUN apt-get install tcpdump -y

RUN apt-get install hping3 -y

RUN apt-get install traceroute -y

RUN apt-get install git -y

RUN apt-get install python-setuptools -y

RUN apt-get install python3-pip -y

RUN pip3 install shodan

RUN pip3 install fierce

RUN apt-get install wget -y

RUN apt-get install gcc -y

RUN apt-get install libcurl4-gnutls-dev -y

RUN apt-get install make -y

RUN cd /tmp && git clone https://github.com/ricardolongatto/dnsrato && cd dnsrato && gcc -c main.c -o main && gcc -c dnsrato.c -o DNSRATO && gcc DNSRATO main -o dnsrato && ln -s /tmp/dnsrato/dnsrato /bin/dnsrato

RUN cd /tmp && wget https://sourceforge.net/projects/dirb/files/dirb/2.22/dirb222.tar.gz && tar xf dirb222.tar.gz && cd dirb222 && chmod +x configure && ./configure && make && chmod +x dirb && ln -s /tmp/dirb222/dirb /bin/dirb

# V0.1
RUN apt-get install python-pip -y

RUN apt-get install nano -y

RUN pip3 install google

RUN apt-get install libavahi-compat-libdnssd1 git-core -y && apt-get install python-setuptools -y && cd /tmp && git clone git://github.com/darkoperator/dnsrecon.git && chmod +x /tmp/dnsrecon/dnsrecon.py && ln -s /tmp/dnsrecon/dnsrecon.py /bin/dnsrecon

RUN cd /tmp && git clone https://github.com/laramies/theHarvester && chmod +x /tmp/theHarvester/theHarvester.py && ln -s /tmp/theHarvester/theHarvester.py /bin/theHarvester && pip install requests && theHarvester
