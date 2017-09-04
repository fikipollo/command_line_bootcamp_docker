#!/bin/bash

if [[ "$SERVER_URL" != "" ]]; then
	SERVER_URL=$(echo $SERVER_URL | sed 's/"//g')
	prev=$(cat /usr/local/command_line_bootcamp/.server_url)
	echo "New server url is $SERVER_URL"
	echo "Previous server url was $prev"
	if [[ "$SERVER_URL" != "$prev" ]]; then
		nvm use 0.12
		sed -i "s|${prev}|${SERVER_URL}|g" /usr/local/command_line_bootcamp/index.js
		echo $SERVER_URL > /usr/local/command_line_bootcamp/.server_url
		#Change the server url to localhost
		cd /usr/local/command_line_bootcamp/
		ln -s $PWD/node_modules/ $PWD/node_modules/edit/
		npm run build
		npm run fixcolor
		sed -i '19i if(opts.server[0] === "/"){ opts.server = location.hostname + opts.server; }' bundle.js
	fi
fi

httpd -DFOREGROUND
