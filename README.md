# docker-php-5.3

This is a Dockerfile to run PHP 5.3 on CentOS 6.9.
Don't use this for production because of EOL.

## Compatibility

- [PukiWiki 1.4.x](https://pukiwiki.osdn.jp/?FAQ/45)

## Getting Started

```console
% docker build . -t docker-php-5.3

% docker run -it --rm docker-php-5.3 /bin/bash
[root@59e11a595d37 /]# php -v
PHP 5.3.3 (cli) (built: Mar 22 2017 12:27:09)
Copyright (c) 1997-2010 The PHP Group
Zend Engine v2.3.0, Copyright (c) 1998-2010 Zend Technologies
```

To run a server:

```console
% docker run -it --rm -v $PWD:/var/www/html -p 8080:80 docker-php-5.3
```
