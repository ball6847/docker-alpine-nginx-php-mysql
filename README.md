## Package Included
- nginx (1.8.0)
- php-fpm (5.6.15)
- mysql (mariadb 10.1.8)
- git (2.6.3)
- composer

## Build

```
docker build -t ball6847/nginx-php-mysql .
```

## RUN

```
docker run -d \
  --name nginx-php-mysql \
  -p 80:80 \
  -v $PWD/data:/var/lib/mysql \
  -v $PWD/logs:/data/logs \
  -v $PWD:/data/htdocs \
  ball6847/nginx-php-mysql
```

## CREDIT

- https://github.com/psi-4ward/dockerphp-nginx
- https://github.com/geshan/docker-php-composer-alpine
- https://github.com/iMega/mysql
