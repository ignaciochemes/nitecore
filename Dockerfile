FROM elixir:1.13 as build

WORKDIR /app

RUN mix do local.hex --force, local.rebar --force

# Build stage

COPY mix.exs mix.lock ./

RUN mix deps.get

COPY lib lib
RUN mix compile

# Run stage
EXPOSE 8080

COPY docker-entrypoint.sh /app/
RUN chmod +x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]