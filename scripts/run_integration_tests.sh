#!/bin/bash

set -e

function run_server()
{
    ./mvnw -f $1/pom.xml -P amp-to-war integration-test -Dmaven.tomcat.port=$2 &
}

function run_test()
{
    while ! curl http://127.0.0.1:$1/$2 &> /dev/null; do
        sleep 1;
    done
    if [[ ! -z "$CONTAINER_NAME" ]]; then
        docker exec $CONTAINER_NAME cat /alfresco/tomcat/logs/catalina.out;
    fi
    test $( curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:$1/$2 ) -lt 400;
}

if [[ "$1" = "repo" ]]; then
    run_server repo 8080
    run_test 8080 alfresco repo
elif [[ "$1" = "share" ]]; then
    run_server share 8081
    run_test 8081 share share
elif [[ "$1" = "docker" ]]; then
    run_test 8080 alfresco repo
    run_test 8080 share share
else
    false;
fi
