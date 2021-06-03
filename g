#!/bin/bash

GDIR=.g

test -f  /etc/g/.rc            && .  /etc/g/.rc
test -f  /usr/local/etc/g/.rc  && .  /usr/local/etc/g/.rc
test -f ~/$GDIR/.rc            && . ~/$GDIR/.rc
test -f   $GDIR/.rc            && .   $GDIR/.rc

if [ -f  $GDIR/$1 ]
then
  .      $GDIR/$1
  exit
fi

if [ -f ~/$GDIR/$1 ]
then
  .     ~/$GDIR/$1
  exit
fi


if [ -f  /usr/local/etc/g/$1 ]
then
  .      /usr/local/etc/g/$1
  exit
fi

if [ -f /etc/g/$1 ]
then
  .     /etc/g/$1
  exit
fi

