```
version: "3.9"
services:
  spark:
    image: spark
    container_name: spark
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - 8080:8080
    tty: true
```
```
docker compose build
docker compose up -d
docker exec -it spark bash
```
