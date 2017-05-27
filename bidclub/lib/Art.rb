class Art
  @@arts = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@arts.length() + 1
    @price = 1
    @purchaser = ""
  end

  define_method(:save) do
  	@@arts.push(self)
  end

  define_method(:bid) do |amount|
  	@price = amount
  end

  define_singleton_method(:clear) do
  	@@arts = []
  end

  define_singleton_method(:all) do
  	@@arts
  end

  define_singleton_method(:find) do |id|
    found_art = nil
    @@arts.each() do |art|
      if art.id().eql?(id)
        found_art = art
      end
    end
    found_art
  end

end