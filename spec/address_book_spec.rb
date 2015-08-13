require('rspec')
require('address_book')

describe('Contact') do
  describe('.all') do
    it('it shows the empty array of contacts') do
      expect(Contact.all()).to(eq([]))
    end
  end
end
