#!/bin/sh
chown -R nobody:nogroup /etc/prometheus/
chown -R nobody:nogroup /data/
chown -R nobody:nogroup /prometheus/log/
/bin/prometheus --config.file=/etc/prometheus/prometheus.yml  --storage.tsdb.path=/prometheus  --web.console.libraries=/usr/share/prometheus/console_libraries  --web.console.templates=/usr/share/prometheus/consoles
