#!/bin/bash
GDIR=.g
test -f  /etc/g/.rc  && .  /etc/g/.rc
test -f ~/$GDIR/.rc  && . ~/$GDIR/.rc
test -f   $GDIR/.rc  && .   $GDIR/.rc
test -f   $GDIR/$1   && .   $GDIR/$1
