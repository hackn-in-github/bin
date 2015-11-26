#!/bin/sh

PROXY="$HOME/bin/2chproxy.pl"

test -x ${PROXY} || exit 0;

pgrep 2chproxy.pl
if [ $? -ne 0 ]; then
perl ${PROXY} -d;
env LIBOVERLAY_SCROLLBAR=0 jd; 
#jd;
perl ${PROXY} -k;
else
env LIBOVERLAY_SCROLLBAR=0 jd; 
#jd;
perl ${PROXY} -k;
fi
