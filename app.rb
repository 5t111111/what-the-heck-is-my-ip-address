require 'sinatra'
require 'sinatra/jsonp'
require 'sinatra/reloader' if development?
require 'awesome_print'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Jsonp

  # Add trailing slash and redirect for URL canonicalization
  get %r{(/.*[^\/])$} do
    redirect "#{params[:captures].first}/"
  end

  get %r{^/(ip)?/$} do
    ap request.ip
    jsonp ip: request.ip
  end

  get '/host/' do
    ap request.host
    jsonp host: request.host
  end

  get '/ua/' do
    ap request.user_agent
    jsonp ua: request.user_agent
  end

  get '/port/' do
    ap request.port
    jsonp port: request.port
  end
end
