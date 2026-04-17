FROM tinymediamanager/tinymediamanager:5.2.17

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates curl jq \
  && rm -rf /var/lib/apt/lists/*

COPY install-tpdb-plugin.sh /usr/local/bin/install-tpdb-plugin.sh
RUN chmod +x /usr/local/bin/install-tpdb-plugin.sh

ENTRYPOINT ["/usr/local/bin/install-tpdb-plugin.sh"]
CMD ["/entrypoint.sh"]
