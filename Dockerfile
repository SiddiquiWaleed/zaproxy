FROM ghcr.io/zaproxy/zaproxy:latest

# Railway sets PORT as an environment variable (usually 3000 internally)
EXPOSE 3000

CMD ["sh", "-c", "sleep 10 && zap.sh -daemon \
  -host 0.0.0.0 \
  -port $PORT \
  -config api.addrs.addr.name=.* \
  -config api.addrs.addr.regex=true \
  -config api.key="]
