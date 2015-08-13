require('rspec')
require('address')

describe('Address') do
  describe('.all') do
    it('shows the empty array of addresses') do
      expect(Address.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the contact into the @@addresses array') do
      test_address = Address.new('123 home st.', '789 work st.')
      expect(test_address.save()).to(eq([test_address]))
    end
  end
  describe('.clear') do
    it('clears the @@addresses array of all addresses') do
      test_address = Address.new('123 home st.', '789 work st.')
      test_address.save()
      expect(Address.clear()).to(eq([]))
    end
  end
  describe('#home') do
    it('returns the home address when the method is called.') do
      test_address = Address.new('123 home st.', '789 work st.')
      test_address.save()
      expect(test_address.home()).to(eq('123 home st.'))
    end
  end
  describe('#work') do
    it('returns the work address when the method is called.') do
      test_address = Address.new('123 home st.', '789 work st.')
      test_address.save()
      expect(test_address.work()).to(eq('789 work st.'))
    end
  end
  describe('#id') do
    it('returns unique id of address stored in array') do
      test_address = Address.new('123 home st.', '789 work st.')
      test_address.save()
      expect(test_address.id()).to(eq(3))
    end
  end
  describe('.find') do
    it('finds the desired address by id and returns it') do
      test_address = Address.new('123 home st.', '789 work st.')
      test_address.save()
      expect(Address.find(test_address.id())).to(eq(test_address))
    end
  end
end
