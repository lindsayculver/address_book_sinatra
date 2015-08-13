require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/name')
require('./lib/address')
require('./lib/phone')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contact_form)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/:id') do
  @contacts = Contact.new(params.fetch('id').to_i())
end

get('/contacts/:id/') do
  @contact = Contact.new(params.fetch('id').to_i())
  erb(:success)
end

post('/contacts') do
  handle = params.fetch('email_handle')
  first = params.fetch('first')
  last = params.fetch('last')
  home = params.fetch('home')
  work = params.fetch('work')
  home_address = params.fetch('home_address')
  work_address = params.fetch('work_address')
  Contact.new(handle).save()
  @contacts = Contact.all()
  erb(:success)
end
