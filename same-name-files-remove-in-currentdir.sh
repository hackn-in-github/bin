#!/bin/bash
files="*.$1"
if [ -n "$2" ]
then
    echo -n "ディレクトリ$2にある$1ファイルを削除しますか[y/n]?"
    read result
    if [ "$result" = "y" ]
    then
	for filepath in $files
	do
#	    echo -v "$1/$filepath"
	    rm -v "${2%/}/$filepath"
	done
    fi
else
    echo "第1引数にはファイルの拡張子"
    echo "第2引数には削除ファイルがあるディレクトリを示す引数が必要です"
fi
