# Build docker image
```bash
docker build --platform <PLATFORM> -t <NAME:TAG> -f src/<DOCKERFILE> src
```

## `PLATFORM`
* amd64
* arm64

## `DOCKERFILE`
* php7_4.Dockerfile
* php7_4-fpm.Dockerfile
* php8_1.Dockerfile
* php8_1-fpm.Dockerfile