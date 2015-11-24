from debian:jessie

env RIEMANN_VERSION 0.2.10

run apt-get update && apt-get install -y default-jre
add https://aphyr.com/riemann/riemann_${RIEMANN_VERSION}_all.deb /riemann_${RIEMANN_VERSION}_all.deb
run dpkg -i riemann_${RIEMANN_VERSION}_all.deb
expose 5556/tcp 5555/udp
copy ./riemann.config /etc/riemann/riemann.config
cmd ["riemann", "/etc/riemann/riemann.config"]
