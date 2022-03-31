#!/usr/bin/env sh

down() {
	CURRENT=$(xbacklight -get | cut -d. -f1)

	if [[ "${CURRENT}" -lt 2 ]]; then
		return
	fi

	if [[ "${CURRENT}" -lt 11 ]]; then
		xbacklight -dec 1
	else
		xbacklight -dec 10
	fi
}

down
