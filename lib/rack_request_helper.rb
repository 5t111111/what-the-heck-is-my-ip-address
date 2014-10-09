require 'resolv'

module RackRequestHelper
  def remote_host
    puts Resolv.getname(ip)
    Resolv.getname(ip)
  end

  def accept_language
    parse_http_accept_header(@env["HTTP_ACCEPT_LANGUAGE"])
  end

  def connection
    @env["HTTP_CONNECTION"]
  end

  def accept_mimetypes
    parse_http_accept_header(@env["HTTP_ACCEPT"])
  end

  def parse_http_accept_header(header)
    header.to_s.split(/\s*,\s*/).map do |part|
      attribute, parameters = part.split(/\s*;\s*/, 2)
      quality = 1.0
      if parameters and /\Aq=([\d.]+)/ =~ parameters
        quality = $1.to_f
      end
      [attribute, quality]
    end
  end
end

Rack::Request.send(:include, RackRequestHelper)
