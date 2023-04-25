FROM postgres:alpine3.17 as builder

FROM alpine:3.17

RUN apk add --no-cache libpq
COPY --from=builder /usr/local/bin/pgbench /usr/bin/pgbench

ENTRYPOINT ["pgbench"]
