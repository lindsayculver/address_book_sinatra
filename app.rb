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

post('/contacts') do
  handle = params.fetch('email_handle')
  Contact.new(handle).save()
  @contacts = Contact.all()
    erb(:success)
end

# post('/contacts') do
#   email = (params.fetch(''))
#   @contact = Contact.new(email)
#   @contact.save()
#   erb(:success)
# end
