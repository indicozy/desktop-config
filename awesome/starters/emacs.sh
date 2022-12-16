#!/bin/sh
if [[ $(ps -ax | grep 'emacs --daemon' | tail -n +2) ]]; then
  emacsclient -a '' -c
else
  notify-send 'starting emacs daemon...'
  emacs --daemon &&
    emacsclient -a '' -c 
fi
