FROM debian:jessie

RUN apt-get update && apt-get install -y default-jre ruby-dev ruby rubygems build-essential
RUN apt-get install -y zlib1g-dev
RUN gem install --no-ri --no-rdoc riemann-client riemann-tools riemann-dash
ADD https://aphyr.com/riemann/riemann_0.2.10_all.deb /riemann_0.2.10_all.deb
RUN dpkg -i riemann_0.2.10_all.deb
EXPOSE 5556/tcp 5555/udp

CMD ["riemann", "/etc/riemann/riemann.config"]
ADD ./riemann.config /etc/riemann/riemann.config
