#!/usr/bin/env sh

up() {
	CURRENT=$(xbacklight -get | cut -d. -f1)

	if [[ "${CURRENT}" -lt 10 ]]; then
		xbacklight -set 10
	else
		xbacklight -inc 10
	fi
}

up
