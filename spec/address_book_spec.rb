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
end
