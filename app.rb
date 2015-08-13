require('sinatra')
require('sinatra/reloader')
also_reload('.lib/**/*.rb')
require('./lib/contact')
require('./lib/name')
require('./lib/address')
require('./lib/phone')

get('/') do
  erb(:index)
end
