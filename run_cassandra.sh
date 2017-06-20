#!/bin/bash

# Create Cassandra Container in Docker
# docker run --name my_cassandra -d cassandra:latest
# docker run -it --link my_cassandra:cassandra --rm cassandra sh -c 'exec cqlsh "$CASSANDRA_PORT_9042_TCP_ADDR"'

docker run -it --link my_cassandra:cassandra --rm cassandra sh -c 'exec cqlsh "$CASSANDRA_PORT_9042_TCP_ADDR"'
