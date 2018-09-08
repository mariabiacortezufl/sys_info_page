#!/bin/bash

# Program to output a system information page

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime () {
	return
}

report_disk_space () {
	return
}

report_home_space () {
	return
}

cat << _EOF_
<HTML>
	<HEAD>
		<TITLE>TITLE</TITLE>
	</HEAD>
	<BODY>"
		<H1>TITLE</H1>
		<P>$TIMESTAMP</P>
	</BODY>
</HTML>"
_EOF_
