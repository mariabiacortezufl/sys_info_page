#!/bin/bash

# Program to output a system information page

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x %r %z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime () {
	cat <<- _EOF_
		<H2>System Uptime</H2>
		<PRE>$(uptime)</PRE>
		_EOF_
	return
}

report_disk_space () {
	cat <<- _EOF_
		<H2>Disk Space Utilization</H2>
		<PRE>$(df -h)</PRE>
		_EOF_
	return
}

report_home_space () {
	cat <<- _EOF_
		<H2>Home Space Utilization</H2>
		<PRE>$(du -sh /home/mariacortez/*)</PRE>
		_EOF_
	return
}

cat << _EOF_
<HTML>
	<HEAD>
		<TITLE>$TITLE</TITLE>
	</HEAD>
	<BODY>"
		<H1>$TITLE</H1>
		<P>$TIMESTAMP</P>
	</BODY>
</HTML>"
_EOF_
