#!/bin/bash
set -e

if [[ -z ${1} ]]; then
	if [[ ! -d /var/cache/squid/00 ]]; then
		echo "Initializing cache..."
		$(which squid) -N -z
	fi
	echo "Starting squid..."
	exec $(which squid) -NYC -d 1
else
	exec "$@"
fi
