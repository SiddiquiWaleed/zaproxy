FROM ghcr.io/zaproxy/zaproxy:latest

EXPOSE 80

CMD ["sh", "-c", "sleep 10 && zap.sh -daemon -host 0.0.0.0 -port 80 \
-config api.addrs.addr.name=.* \
-config api.addrs.addr.regex=true \
-config api.key="]
