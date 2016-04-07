#!/usr/bin/env ruby

require 'sinatra'
require 'haml'
require 'genregen'
require 'json'

get '/' do
	haml :index, :locals => { :genre => GenreGen.generate }
end

get '/json' do
	content_type :json
	{ :genre => GenreGen.generate }.to_json
end

not_found do
	haml :error, :locals => { :error => "404" }
end
