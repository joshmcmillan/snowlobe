require 'bundler'
Bundler.require

set :server, %w[puma webrick]
set :haml, attr_wrapper: '"'

get '/' do
  haml :index
end