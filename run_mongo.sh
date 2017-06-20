#!/bin/bash

# Create MongoDB Container in Docker
# docker run --name my_mongo -d mongo:latest
# docker run -it --link my_mongo:mongo --rm mongo sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test"'

# Copy json datasets to MongoDB Container
# docker cp movielens_movies.json my_mongo:/home
# docker cp movielens_users.json my_mongo:/home

# Import json datasets in MongoDB Container
# mongoimport --type json -d movielens -c movies --file "/home/movielens_movies.json"
# mongoimport --type json -d movielens -c users --file "/home/movielens_users.json"

docker run -it --link my_mongo:mongo --rm mongo sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test"'
