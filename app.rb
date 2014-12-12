require 'sinatra'
require 'sinatra/jsonp'
require 'sinatra/reloader' if development?
require 'slim'
#require 'awesome_print' if development?
require 'awesome_print'
require_relative 'lib/rack_request_helper'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Jsonp

  # Just ignore undefinded methods
  def method_missing(method, *_args)
    puts "Method [#{method}] is not found."
    {}
  end

  def ip; { ip: request.cf_connecting_ip || request.ip }; end
  def host; { host: request.remote_host }; end
  def ua; { ua: request.user_agent }; end
  def port; { port: request.port }; end
  def lang; { lang: request.accept_language }; end
  def connection; { connection: request.connection }; end
  def encoding; { encoding: request.accept_encoding }; end
  def mime; { mime: request.accept_mimetypes }; end

  get '/' do
    @title = 'What The Heck Is My IP Address?'
    slim :index
  end

  get '/ip' do
    content_type 'text/plain'
    ip[:ip] + "\n"
  end

  get '/api' do
    return jsonp {} unless params['fields']
    result = {}
    params['fields'].split(',').each do |method_name|
      result.merge!(send(method_name.strip) || {})
    end
    jsonp result
  end
end
