class Art
  @@arts = []

  # define_method(:initialize) do |name|
  #   @name = name
  #   @artist = ""
  #   @id = @@arts.length() + 1
  #   @price = 1
  #   @purchaser = ""
  # end

  attr_accessor(:name, :artist, :price, :purchaser)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @artist = attributes.fetch(:artist)
    @price = attributes.fetch(:price)
    @purchaser = attributes.fetch(:purchaser)
    @id = @@arts.length() + 1
  end

  define_method(:save) do
  	@@arts.push(self)
  end

  define_method(:name) do
    @name
  end

  define_method(:bid) do |amount|
  	@price = amount
  end

  define_method(:artist) do |artist|
    @artist = artist
  end

  define_method(:id) do
    @id
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
      if art.id().eql?(id.to_i)
        found_art = art
      end
    end
    found_art
  end

end