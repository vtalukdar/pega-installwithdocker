#!/bin/sh
# wait-for-it.sh: wait for a host:port to be ready

host="$1"
port="$2"
shift 2

echo "Waiting for $host:$port..."
while ! nc -z "$host" "$port"; do
  sleep 2
done

exec "$@"
