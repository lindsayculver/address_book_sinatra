class Contact
  @@contacts = []
  define_method(:initialize) do |name, email, address, phone|
    @name = name
    @email = email
    @address = address
    @phone = phone
    @id = @@contacts.length.+(1)
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

  define_method(:address) do
    @address
  end
  define_method(:phone) do
    @phone
  end

  define_method(:id) do
    @id
  end
end
