#!/bin/bash

rm -r target/classes
mkdir -p target/classes

for archive in $(clj -Stree | awk '{split($1, a, "/"); gsub("\\.", "/", a[1]); print a[1] "/" a[2] "/" $2 "/" a[2] "-" $2 ".jar"}'); do
    (
        echo "Expanding $archive..." && \
            cd target/classes && \
            jar xf ~/.m2/repository/$archive
    )
done
