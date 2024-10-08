# Description
Image for using Node-RED with [puppeteer](https://pptr.dev/) at version 13 and [cheerio](https://cheerio.js.org/) at version 1.0.0-rc.9, which are the latest supported by node16.

With this image, you can directly use the launch node from [@digitalnodecom/node-red-contrib-puppeteer](https://flows.nodered.org/node/@digitalnodecom/node-red-contrib-puppeteer), for example, without needing an additional image with puppeteer.

# Instructions
In the docker-compose file, the modifications to the settings.js file for library loading are already configured. If you want to update, you only need to add the following modification:
```` 
functionGlobalContext: {
	// os:require('os'),
	puppeteer: require('puppeteer'),
	cheerio: require('cheerio')
},
````