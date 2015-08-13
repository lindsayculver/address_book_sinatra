class Contact
  @@contacts = []
  define_method(:initialize) do |name|
    @name
  end
  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end
end
