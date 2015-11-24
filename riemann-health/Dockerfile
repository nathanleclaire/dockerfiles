from debian

run apt-get update && apt-get install -y ruby ruby-dev build-essential zlib1g-dev && \
    gem install --no-ri --no-rdoc riemann-tools

env RIEMANN_HEALTH_SERVER_HOSTNAME riemann-server
copy ./entrypoint.sh /entrypoint.sh
entrypoint ["/entrypoint.sh"]
