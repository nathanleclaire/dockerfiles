FROM alpine
MAINTAINER Nathan LeClaire <nathan.leclaire@gmail.com>

COPY /hn /usr/local/bin/hn
RUN chmod +x /usr/local/bin/hn
RUN adduser -D hn
USER hn

ENTRYPOINT ["hn"]
