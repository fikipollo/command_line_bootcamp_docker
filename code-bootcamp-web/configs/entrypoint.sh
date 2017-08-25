#!/bin/bash

if [[ "$SERVER_URL" != "" ]]; then
	prev=$(cat /usr/local/command_line_bootcamp/.server_url)
	if [[ "$SERVER_URL" != "$prev" ]]; then
		sed -i "s|${prev}|${SERVER_URL}|g" /usr/local/command_line_bootcamp/index.js
		echo $SERVER_URL > /usr/local/command_line_bootcamp/.server_url
		#Change the server url to localhost 
		cd /usr/local/command_line_bootcamp/
		npm run build
		npm run fixcolor
	fi
fi

httpd -DFOREGROUND

