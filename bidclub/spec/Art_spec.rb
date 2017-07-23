require('rspec')
require('art')

describe(Art) do
  before() do
    Art.clear()
  end

  describe('#name') do
    it("returns the name of the piece of art") do
      test_art = Art.new({:name=> "Pickle Breath", :artist=> "Georgia O'keiffer", :price=> 100, :purchaser => "Jane Doe"})
      expect(test_art.name()).to(eq("Pickle Breath"))
    end
  end

  describe('#id') do
    it("returns the id of the piece of art") do
      test_art = Art.new({:name=> "Pickle Breath", :artist=> "Georgia O'keiffer", :price=> 100, :purchaser => "Jane Doe"})
      expect(test_art.id()).to(eq(1))
    end
  end

  # describe('#cars') do
  #   it("initially returns an empty array of cars for the piece of art") do
  #     test_art = Art.new("Pickle Breath")
  #     expect(test_art.cars()).to(eq([]))
  #   end
  # end

  describe("#save") do
    it("adds a piece of art to the array of saved pieces of art") do
      test_art = Art.new({:name=> "Pickle Breath", :artist=> "Georgia O'keiffer", :price=> 100, :purchaser => "Jane Doe"})
      test_art.save()
      expect(Art.all()).to(eq([test_art]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Art.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved pieces of art") do
      Art.new({:name=> "Pickle Breath", :artist=> "Georgia O'keiffer", :price=> 100, :purchaser => "Jane Doe"}).save()
      Art.clear()
      expect(Art.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a piece of art by its id number") do
      test_art = Art.new({:name=> "Pickle Breath", :artist=> "Georgia O'keiffer", :price=> 100, :purchaser => "Jane Doe"})
      test_art.save()
      test_art2 = Art.new({:name=> "Saurkraut Whispers", :artist=> "Salamander Dali", :price=> 300, :purchaser => "John Glenn"})
      test_art2.save()
      expect(Art.find(test_art.id())).to(eq(test_art))
    end
  end
end