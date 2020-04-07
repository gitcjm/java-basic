#! /bin/bash

rm -rf target/* && echo -e 'clear target success'
javac -sourcepath src -d target src/me.java