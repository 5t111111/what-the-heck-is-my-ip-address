Feature: Connection information API
  Background:
    Given This API provides features to get connection information

  Scenario: get IP address as string
    When I hit /ip
    Then it returns ip address as string

  Scenario: get IP address as json
    When I hit /api?fields=ip
    Then it returns ip address as json
 
  Scenario: get Remote Host as json
    When I hit /api?fields=host
    Then it returns Remote Host as json

  Scenario: get User Agent as json
    When I hit /api?fields=ua
    Then it returns User Agent as json

  Scenario: get Port as json
    When I hit /api?fields=port
    Then it returns Port as json

  Scenario: get Lang as json
    When I hit /api?fields=lang
    Then it returns Lang as json

  Scenario: get Connection as json
    When I hit /api?fields=connection
    Then it returns Connection as json

  Scenario: get Encoding as json
    When I hit /api?fields=encoding
    Then it returns Encoding as json

  Scenario: get MIME as json
    When I hit /api?fields=mime
    Then it returns MIME as json

  Scenario: get all fields at once as json
    When I hit /api?fields=ip,host, ua, port,lang , connection,encoding,mime,NOTEXIST
    Then it returns all fields as json
