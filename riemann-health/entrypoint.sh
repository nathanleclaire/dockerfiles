#!/bin/bash

riemann-health --host ${RIEMANN_HEALTH_SERVER_HOSTNAME} --event-host $(cat /etc/hostname)
