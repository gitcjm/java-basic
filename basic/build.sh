#! /bin/bash

rm -rf target/* && echo 'clear target success.'

# 设置classpath
for file in ./lib/*
do
	if [ -f $file ]
	then
		file_extension=${file##*.}
		if [ "$file_extension"=="jar" ]
		then
			jars=$jars:$file
		fi
	fi
done

# 编译
javac -sourcepath src -d target src/Main.java -classpath $jars && echo 'compile completed.'
