#!/bin/bash

docker pull owasp/zap2docker-stable
docker run -i owasp/zap2docker-stable zap-baseline.py -t "https://github.com/zyprdta/bitcoin-order-app" -l PASS > zap_baseline_report.html

echo $? > /dev/null