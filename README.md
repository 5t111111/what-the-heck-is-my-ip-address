# What The Heck Is My IP Address?

"What The Heck Is My IP Address?" is a web application lets you know your IP address and some other HTTP connection information.

https://what-the-heck-is-my-ip-address.nilsteps.com

## API

### IP address string

This URL simply returns IP address string.

https://what-the-heck-is-my-ip-address.nilsteps.com/ip

### Other fields

Some other information is provided by json format, these fields are available for the moment.

- IP Address (ip)
- Remote Host(host)
- User Agent (ua)
- Port (port)
- Lang (lang)
- Connection (connection)
- Encoding (encoding)
- MIME (mime)

You can specify the fields you want by appending field names as comma separated query paramaters. 

https://what-the-heck-is-my-ip-address.nilsteps.com/api?fields=ip,host,ua

