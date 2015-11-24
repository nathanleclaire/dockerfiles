from debian

add https://fah.stanford.edu/file-releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb /fah.deb
run dpkg -i --force-depends /fah.deb

env FAH_USER Nathan_LeClaire
env FAH_TEAM DockerSwarm
env FAH_CPU_USAGE 30
cmd FAHClient --user="$FAH_USER" --team="$FAH_TEAM" --passkey="$FAH_PASSKEY" --cpu-usage="$FAH_CPU_USAGE"
