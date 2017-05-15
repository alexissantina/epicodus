require('triangle')
require('rspec')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if not a triangle") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end

  describe("#equilateral?") do
  	it ("returns true if all sides are equal") do
  	  test_equilateral = Triangle.new(7,7,7)
   	  expect(test_equilateral.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
  	it ("returns true if 2/3 sides are equal") do
  	  test_isosceles = Triangle.new(6,6,4)
  	  expect(test_isosceles.isosceles?()).to(eq(true))
  	end
  end

  describe("#scalene?") do
  	it ("returns true if 0/3 sides are equal") do 
  	  test_scalene = Triangle.new(3,4,5)
  	  expect(test_scalene.scalene?()).to(eq(true))
    end
  end
end