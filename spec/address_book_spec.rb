require('rspec')
require('address_book')

describe('Contact') do
  describe('.all') do
    it('shows the empty array of contacts') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the contact into the @@contacts array') do
      test_contact = Contact.new('Jimmy', 'jimmy@email.com', '123 fake. st', '3605555555')
      expect(test_contact.save()).to(eq([test_contact]))
    end
  end
  describe('.clear') do
    it('it clears the @@contacts array of all contacts') do
      test_contact = Contact.new('Bill', 'bill@email.com', '123 fake. st', '3605555555')
      test_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('#name') do
    it('returns a name when the method is called') do
      test_contact = Contact.new('Sally', 'sally@email.com', '123 fake. st', '3605555555')
      test_contact.save()
      expect(test_contact.name()).to(eq('Sally'))
    end
  end

  describe('#email') do
    it('returns the email when the method is called') do
      test_contact = Contact.new('Tim', 'tim@email.com', '123 fake st.', '3605555555')
      test_contact.save()
      expect(test_contact.email()).to(eq('tim@email.com'))
    end
  end

  describe('#address') do
    it('returns the address when the method is called') do
      test_contact = Contact.new('Pam', 'pam@email.com', '123 fake st.', '3605555555')
      test_contact.save()
      expect(test_contact.address()).to(eq('123 fake st.'))
    end
  end
  describe('#phone') do
    it('returns the phone number when the method is called') do
      test_contact = Contact.new('Gunther', 'gunther@email.com', '123 fake st.','3605555555')
      test_contact.save()
      expect(test_contact.phone()).to(eq('3605555555'))
    end
  end
end
