#!/bin/bash

for f in 2022*.rml.ttl;
do
  echo "$f"
  time java -jar /home/dylan/Projects/rmlmapper-java-6/target/rmlmapper-5.0.0-r362-all.jar -m "$f" > "log-$f.txt" 2>&1
  cat ${f:0:20}.nt | wc
done
