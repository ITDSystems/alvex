#!/bin/bash

[[ -f "$HOME/apache-maven-3.3.9/bin/mvn" ]] || curl http://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz | tar -xz  -C "$HOME/"

export M2_HOME="$HOME/apache-maven-3.3.9/"
export M2="$M2_HOME/bin"

"$M2/mvn" -B $@
