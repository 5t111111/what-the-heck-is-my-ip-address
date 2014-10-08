# What The Heck Is My IP Address?

"What The Heck Is My IP Address?" is a web application lets you know your IP address and other HTTP connection informations.

http://what-the-heck-is-my-ip-address.herokuapp.com

## API

### IP address string

This URL simply returns IP address string.

http://what-the-heck-is-my-ip-address.herokuapp.com/ip

### Other fields

These fields are available as JSON for the moment.

- IP Address (ip)
- Remote Host(host)
- User Agent (ua)
- Port (port)
- Lang (lang)
- Connection (connection)
- Encoding (encoding)
- MIME (mime)

You can provide the fields that you want you know as comma separated query paramaters. 

http://what-the-heck-is-my-ip-address.herokuapp.com/api?fields=ip,host,ua

