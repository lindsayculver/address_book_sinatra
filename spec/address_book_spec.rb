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
      test_contact = Contact.new('Jimmy')
      expect(test_contact.save()).to(eq([test_contact]))
    end
  end
  describe('.clear') do
    it('it clears the @@contacts array of all contacts') do
      test_contact = Contact.new('Bill')
      test_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('#name') do
    it('returns a name when the method is called') do
      test_contact = Contact.new('Sally')
      test_contact.save()
      expect(test_contact.name()).to(eq('Sally'))
    end
  end

  describe('#email') do
    it('returns the email when the method is called') do
      test_contact = Contact.new('Tim', 'tim@email.com')
      test_contact.save()
      expect(test_contact.email()).to(eq('tim@email.com'))
    end
  end
end
