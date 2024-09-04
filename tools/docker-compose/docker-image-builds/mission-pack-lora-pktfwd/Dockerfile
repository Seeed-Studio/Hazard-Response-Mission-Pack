FROM sensecraft/mission-pack-base-debian:v20240817

COPY . /opt/pkt_fwd

RUN chmod +x /opt/pkt_fwd/lora_pkt_fwd
RUN chmod +x /opt/pkt_fwd/reset_lgw.sh

WORKDIR /opt/pkt_fwd

EXPOSE 1700

CMD ["/opt/pkt_fwd/lora_pkt_fwd", "-c", "/opt/pkt_fwd/global_conf.json.sx1250.EU868"]
