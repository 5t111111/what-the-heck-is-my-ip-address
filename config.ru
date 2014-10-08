$:.unshift(File.dirname(__FILE__))

require 'sass/plugin/rack'
use Sass::Plugin::Rack

require 'app'

map('/') { run App }