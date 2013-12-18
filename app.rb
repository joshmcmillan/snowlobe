require 'bundler'
Bundler.require

set :server, %w[puma webrick]
set :haml, attr_wrapper: '"'

get '/' do
  @lobes = JSON.load(File.read('lobes.json'))
  haml :index
end