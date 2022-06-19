FROM elixir:otp-25-alpine

WORKDIR /app
COPY . /app/
RUN chmod +x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]