$:.unshift(File.dirname(__FILE__))

require 'app'

map('/') { run App }