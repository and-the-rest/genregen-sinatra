#!/usr/bin/env ruby

require 'sinatra'
require 'haml'
require 'genregen'

get '/' do
	haml :index, :locals => { :genre => GenreGen.generate }
end
