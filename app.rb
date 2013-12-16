require 'bundler'
Bundler.require

set :server, %w[puma webrick]

get '/' do
  haml :index
end