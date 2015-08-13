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
end
