# Use the official OWASP ZAP image
FROM ghcr.io/zaproxy/zaproxy:latest

# Railway expects apps to run on port 3000
EXPOSE 3000

# Start ZAP on port 3000 and allow external API access
CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "3000", "-config", "api.addrs.addr.name=.*", "-config", "api.addrs.addr.regex=true"]
