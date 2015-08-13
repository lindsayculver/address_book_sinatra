class Phone
  @@phones = []
  define_method(:initialize) do |home, work|
    @home = home
    @work = work
    @id = @@phones.length.+(1)
  end
  define_singleton_method(:all) do
    @@phones
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
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
    found_phone = nil
    @@phones.each() do |phone|
      if phone.id.eql?(id)
        found_phone = phone
      end
    end
    found_phone
  end
end
