require('rspec')
require('phone')

describe('Phone') do
  describe('.all') do
    it('shows the empty array of phones') do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('will save the contact into the @@phones array') do
      test_phone = Phone.new(5555555555, 4444444444)
      expect(test_phone.save()).to(eq([test_phone]))
    end
  end
  describe('.clear') do
    it('clears the @@phones array of all phones') do
      test_phone = Phone.new(5555555555, 4444444444)
      test_phone.save()
      expect(Phone.clear()).to(eq([]))
    end
  end
  describe('#home') do
    it('returns the home phone when the method is called.') do
      test_phone = Phone.new(5555555555, 4444444444)
      test_phone.save()
      expect(test_phone.home()).to(eq(5555555555))
    end
  end
  describe('#work') do
    it('returns the work phone when the method is called.') do
      test_phone = Phone.new(5555555555, 4444444444)
      test_phone.save()
      expect(test_phone.work()).to(eq(4444444444))
    end
  end
  describe('#id') do
    it('returns unique id of phone stored in array') do
      test_phone = Phone.new(5555555555, 4444444444)
      test_phone.save()
      expect(test_phone.id()).to(eq(3))
    end
  end
  describe('.find') do
    it('finds the desired phone by id and returns it') do
      test_phone = Phone.new(5555555555, 4444444444)
      test_phone.save()
      expect(Phone.find(test_phone.id())).to(eq(test_phone))
    end
  end
end
