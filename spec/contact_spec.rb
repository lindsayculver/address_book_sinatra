require('rspec')
require('contact')

describe('Contact') do
  describe('.all') do
    it('shows the empty array of contacts') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the contact into the @@contacts array') do
      test_contact = Contact.new('jimmy@email.com')
      expect(test_contact.save()).to(eq([test_contact]))
    end
  end
  describe('.clear') do
    it('it clears the @@contacts array of all contacts') do
      test_contact = Contact.new('bill@email.com')
      test_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end
  describe('#email_handle') do
    it('returns the email_handle when the method is called') do
      test_contact = Contact.new('tim@email.com')
      test_contact.save()
      expect(test_contact.email_handle()).to(eq('tim@email.com'))
    end
  end
  describe('#id') do
    it('returns unique id of contact stored in array') do
      Contact.clear()
      test_contact = Contact.new('monica@email.com')
      test_contact.save()
      expect(test_contact.id()).to(eq(1))
    end
  end
  describe('.find') do
    it('finds the desired contact by id and returns it') do
      test_contact = Contact.new('joey@email.com')
      test_contact.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
  describe('#add_phone') do
    it('adds a new contact to the contact list') do
      test_contact = Contact.new('bill@email.com')
      test_phones = Phone.new('1111111111', '2222222222')
      test_contact.add_phone(test_phones)
      expect(test_contact.phones()).to(eq([test_phones]))
    end
  end
  describe('#add_name') do
    it('adds a new contact to the contact list') do
      test_contact = Contact.new('bill@email.com')
      test_names = Name.new('Tom', 'mot')
      test_contact.add_name(test_names)
      expect(test_contact.names()).to(eq([test_names]))
    end
  end
  describe('#add_address') do
    it('adds a new contact to the contact list') do
      test_contact = Contact.new('bill@email.com')
      test_addresses = Address.new('123 fake st.','789 fake st.')
      test_contact.add_address(test_addresses)
      expect(test_contact.addresses()).to(eq([test_addresses]))
    end
  end
end
