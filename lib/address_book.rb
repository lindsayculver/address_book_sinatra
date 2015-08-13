class Contact
  @@contacts = []
  define_method(:initialize) do |name|
    @name = name
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
end
