class Name
  @@names = []
  define_method(:initialize) do |first, last|
    @first = first
    @last = last
    @id = @@names.length.+(1)
  end
  define_singleton_method(:all) do
    @@names
  end

  define_method(:save) do
    @@names.push(self)
  end

  define_singleton_method(:clear) do
    @@names = []
  end
  define_method(:first) do
    @first
  end
  define_method(:last) do
    @last
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |id|
    found_name = nil
    @@names.each() do |name|
      if name.id.eql?(id)
        found_name = name
      end
    end
    found_name
  end
end
