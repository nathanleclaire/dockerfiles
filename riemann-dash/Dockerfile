from debian

run apt-get update && apt-get install -y ruby && \
    gem install --no-ri --no-rdoc riemann-dash
env RIEMANN_DASH_CONFIG /config.rb
expose 4567/tcp
copy ./config.rb /config.rb
cmd ["riemann-dash"]
