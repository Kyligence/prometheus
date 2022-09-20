FROM docker.io/prom/prometheus:v2.37.0

COPY entrypoint.sh /entrypoint.sh
USER       root
ENTRYPOINT ["sh", "/entrypoint.sh"]
