class Contact
  @@contacts = []
  define_method(:initialize) do |email_handle|
    @email_handle = email_handle
    @id = @@contacts.length().+(1)
    @details = []
  end
  define_method(:email_handle) do
    @email_handle
  end
  define_method(:id) do
    @id
  end
  define_method(:details) do
    @details
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
  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id.eql?(id)
        found_contact = contact
      end
    end
    found_contact
  end
end
