class Contact
  @@contacts = []
  define_method(:initialize) do |name, email, address, phone|
    @name = name
    @email = email
    @address = address
    @phone = phone
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:name) do
    @name
  end
  define_method(:email) do
    @email
  end
end
