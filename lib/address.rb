class Address
  @@addresses = []
  define_method(:initialize) do |home, work|
    @home = home
    @work = work
    @id = @@addresses.length.+(1)
  end
  define_singleton_method(:all) do
    @@addresses
  end

  define_method(:save) do
    @@addresses.push(self)
  end

  define_singleton_method(:clear) do
    @@addresses = []
  end
  define_method(:home) do
    @home
  end
  define_method(:work) do
    @work
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |id|
    found_address = nil
    @@addresses.each() do |address|
      if address.id.eql?(id)
        found_address = address
      end
    end
    found_address
  end
end
