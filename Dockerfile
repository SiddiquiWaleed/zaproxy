# Use OWASP's official Docker image
FROM owasp/zap2docker-stable

# Optional: Expose the port you want to run the API on
EXPOSE 8080

# Start ZAP in daemon mode with API enabled
CMD ["zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8080", "-config", "api.addrs.addr.name=.*", "-config", "api.addrs.addr.regex=true"]
