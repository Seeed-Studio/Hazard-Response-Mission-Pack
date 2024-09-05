FROM sensecraft/mission-pack-base-debian:v20240817

COPY . /opt/rs485_de
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN chmod +x /opt/rs485_de/rs485_DE

WORKDIR /opt/rs485_de

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]