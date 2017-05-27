require('Parcel')
require('rspec')

describe(Parcel) do
  describe("#volume") do
    it("provides the volume of the parcel") do
      test_parcel = Parcel.new(5,3,2,1)
      expect(test_parcel.volume()).to(eq(30))
    end
  end

  describe("#cost_to_ship") do
  	it ("returns the amount it costs to ship") do
  	  test_parcel = Parcel.new(7,7,7,7)
   	  expect(test_parcel.cost_to_ship(1)).to(eq(350))
    end
  end

  describe("#cost_to_ship") do
  	it ("returns an error if parcel is missing a dimension") do
  	  test_parcel = Parcel.new(6,6,4)
  	  expect(test_parcel.cost_to_ship(1)).to(eq(nil))
  	end
  end

end