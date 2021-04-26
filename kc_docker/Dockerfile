FROM prom/prometheus-linux-amd64:HEAD

COPY entrypoint.sh /entrypoint.sh
USER       root	
ENTRYPOINT ["sh", "/entrypoint.sh"]
