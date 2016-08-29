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
    test $( curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:$1/$2 ) -lt 400;
}

if [[ "$1" = "repo" ]]; then
    run_server repo 8080
    run_test 8080 alfresco
elif [[ "$1" = "share" ]]; then
    run_server share 8081
    run_test 8081 share
elif [[ "$1" = "docker" ]]; then
    run_test 8080 alfresco
    run_test 8080 share
else
    false;
fi
