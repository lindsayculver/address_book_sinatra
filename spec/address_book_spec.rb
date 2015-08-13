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
end
