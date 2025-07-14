# Use the official OWASP ZAP image from GitHub Container Registry
FROM ghcr.io/zaproxy/zaproxy:latest

# Expose the port ZAP will listen on
EXPOSE 8080

# Start ZAP in daemon mode and allow API access from any IP
CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8080", "-config", "api.addrs.addr.name=.*", "-config", "api.addrs.addr.regex=true"]
