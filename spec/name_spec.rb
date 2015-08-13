require('rspec')
require('name')

describe('Name') do
  describe('.all') do
    it('shows the empty array of names') do
      expect(Name.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the contact into the @@names array') do
      test_name = Name.new('Jimmy', 'Smits')
      expect(test_name.save()).to(eq([test_name]))
    end
  end
  describe('.clear') do
    it('clears the @@names array of all names') do
      test_name = Name.new('Bill', 'Doe')
      test_name.save()
      expect(Name.clear()).to(eq([]))
    end
  end
  describe('#first') do
    it('returns the first name when the method is called.') do
      test_name = Name.new('Sally', 'Doe')
      test_name.save()
      expect(test_name.first()).to(eq('Sally'))
    end
  end
  describe('#last') do
    it('returns the last name when the method is called.') do
      test_name = Name.new('Sally', 'Doe')
      test_name.save()
      expect(test_name.last()).to(eq('Doe'))
    end
  end
  describe('#id') do
    it('returns unique id of name stored in array') do
      test_name = Name.new('Sally', 'Doe')
      test_name.save()
      expect(test_name.id()).to(eq(3))
    end
  end
  describe('.find') do
    it('finds the desired name by id and returns it') do
      test_name = Name.new('Joey','Tribianai')
      test_name.save()
      expect(Name.find(test_name.id())).to(eq(test_name))
    end
  end
end
