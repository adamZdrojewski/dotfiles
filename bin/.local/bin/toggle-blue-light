#!/bin/bash

# Detect if wlsunset is currently running
if pgrep "wlsunset" > /dev/null
then
	# Currently running - kill it!
	pkill wlsunset
else
	# Not running - start it up
	wlsunset -t 3000 &
fi
