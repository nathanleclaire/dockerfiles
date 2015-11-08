from debian:jessie

run apt-get update && \
    apt-get install -y ansible ssh && \
    rm -rf /var/lib/apt/lists/*
add ./machine.py /machine.py
add ./playbooks /playbooks
add ./conf/ansible.cfg /etc/ansible/ansible.cfg
add ./entrypoint.sh /entrypoint.sh
entrypoint ["./entrypoint.sh"]
cmd ["/playbooks/bootstrap.yml"]
