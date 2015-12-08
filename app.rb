#!/usr/bin/env ruby

require 'sinatra'
require 'haml'
require 'genregen'

get '/' do
	haml :index, :locals => { :genre => GenreGen.generate }
end

not_found do
	haml :error, :locals => { :error => "404" }
end
