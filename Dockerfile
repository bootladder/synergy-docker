from ubuntu
RUN apt-get update
RUN apt-get install -y libxtst-dev
RUN apt-get install -y libxinerama-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libqtcore4
RUN apt-get install -y libqtgui4
RUN apt-get install -y libavahi-compat-libdnssd1
RUN apt-get install -y libcurl3
RUN apt-get install -y libxrandr-dev

#get binaries from https://github.com/amankhoza/synergy-binaries/blob/master/synergy-v1.8.8-stable-Linux-x86_64.deb

ADD synergy-v1.8.8-stable-Linux-x86_64.deb synergy.deb
RUN dpkg -i synergy.deb



CMD ["synergys","-h"]
