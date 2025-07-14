FROM ghcr.io/zaproxy/zaproxy:latest

# Railway expects HTTP traffic on port 80
EXPOSE 80

CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "80", "-config", "api.addrs.addr.name=.*", "-config", "api.addrs.addr.regex=true"]
