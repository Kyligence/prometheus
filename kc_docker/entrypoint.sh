#!/bin/sh
chown -R nobody:nogroup /etc/prometheus/
chown -R nobody:nogroup /prometheus/data/
chown -R nobody:nogroup /prometheus/log/

/etc/init.d/cron start && /etc/init.d/rsyslog start

/bin/prometheus --config.file=/etc/prometheus/prometheus.yml  --storage.tsdb.path=/prometheus  --web.console.libraries=/usr/share/prometheus/console_libraries  --web.console.templates=/usr/share/prometheus/consoles
