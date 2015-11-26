#!/bin/sh
for ext
in .+_e[0-9]+\.pdf$ .+_e[0-9]+\.xbb$ .+_e[0-9]+\.eps$ .+_d[0-9]+\.pl$ .+d[0-9]+\.dta$ .+\.aux$ .+\.log$ .+\.out$ .+\.ans$ .+\.dvi$ .+\.gnuplot$ .+\.table$ .+/texput\.pdf$ .+/texput\.tex$ .+\.dpth
do
# echo EXT=$ext
 find ./ -regex $ext -exec rm {} \;
done
