#! /bin/sh -x

curl -H "x-forwarded-host: mercateo.com" -H "x-forwarded-port: 8888" -H 'x-forwarded-proto: eric' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H "x-forwarded-port: 8888" -H 'x-forwarded-proto: http' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H "x-forwarded-port: 8888" -H 'x-forwarded-proto: https' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H "x-forwarded-port: 8888" http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H 'x-forwarded-proto: eric' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H 'x-forwarded-proto: http' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H 'x-forwarded-proto: https' -H 'host: mercateo.com' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" -H 'x-forwarded-proto: https' http://localhost:8080/test
curl -H "x-forwarded-host: mercateo.com" http://localhost:8080/test
curl -H 'host: mercateo.com' http://localhost:8080/test
curl -H 'host: mercateo.com:4444' -H 'x-forwarded-proto: eric' http://localhost:8080/test
curl -H 'host: mercateo.com:4444' -H 'x-forwarded-proto: http' http://localhost:8080/test
curl -H 'host: mercateo.com:4444' -H 'x-forwarded-proto: https' http://localhost:8080/test
curl -H 'host: mercateo.com:4444' http://localhost:8080/test
curl -H 'x-forwarded-host: mercateo.com' http://localhost:8080/test
curl -H 'x-forwarded-host: mercateo.com' http://localhost:8080/test -H 'eric: on'
curl -H 'x-forwarded-host: mercateo.com' http://localhost:8080/test -H 'https: off'
curl -H 'x-forwarded-host: mercateo.com' http://localhost:8080/test -H 'https: on'
curl -H 'x-forwarded-proto: http' -H 'host: mercateo.com' http://localhost:8080/test
curl -H 'x-forwarded-proto: https' -H 'host: mercateo.com' http://localhost:8080/test
curl http://localhost:8080/test
