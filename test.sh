#! /bin/sh -x

curl -h "x-forwarded-host: mercateo.com" -h "x-forwarded-port: 8888" -h 'x-forwarded-proto: eric' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h "x-forwarded-port: 8888" -h 'x-forwarded-proto: http' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h "x-forwarded-port: 8888" -h 'x-forwarded-proto: https' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h "x-forwarded-port: 8888" http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h 'x-forwarded-proto: eric' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h 'x-forwarded-proto: http' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h 'x-forwarded-proto: https' -h 'host: mercateo.com' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" -h 'x-forwarded-proto: https' http://localhost:8080/test
curl -h "x-forwarded-host: mercateo.com" http://localhost:8080/test
curl -h 'host: mercateo.com' http://localhost:8080/test
curl -h 'host: mercateo.com:4444' -h 'x-forwarded-proto: eric' http://localhost:8080/test
curl -h 'host: mercateo.com:4444' -h 'x-forwarded-proto: http' http://localhost:8080/test
curl -h 'host: mercateo.com:4444' -h 'x-forwarded-proto: https' http://localhost:8080/test
curl -h 'host: mercateo.com:4444' http://localhost:8080/test
curl -h 'x-forwarded-host: mercateo.com' http://localhost:8080/test
curl -h 'x-forwarded-host: mercateo.com' http://localhost:8080/test -h 'eric: on'
curl -h 'x-forwarded-host: mercateo.com' http://localhost:8080/test -h 'https: off'
curl -h 'x-forwarded-host: mercateo.com' http://localhost:8080/test -h 'https: on'
curl -h 'x-forwarded-proto: http' -h 'host: mercateo.com' http://localhost:8080/test
curl -h 'x-forwarded-proto: https' -h 'host: mercateo.com' http://localhost:8080/test
curl http://localhost:8080/test
