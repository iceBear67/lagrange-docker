# lagrange-docker

打好包的 Lagrange.OneBot

# Example
把这些内容放到 `docker-compose.yml` 中，然后自己根据需要修改
```yaml
services:
  lagrange:
    image: docker.io/icebear67/lagrange-onebot:f63e1b
    ports:
      - "8233:8233"
    volumes:
      - "./lgr-data:/lagrange"
```
