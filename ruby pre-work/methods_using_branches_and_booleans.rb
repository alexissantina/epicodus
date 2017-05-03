#Make an Fixnum#absolutely_larger method that will add 1 to a number if it is positive or 0, and subtract 1 if it is negative.
class Fixnum
  define_method(:absolutely_larger) do
    number = self
    if self >= 0
    	number += 1
    else
    	number -= 1
    end
    number
  end
end


#Make an Fixnum#can_drink_alcohol? method that returns a boolean based on if the Fixnum is greater than or equal to 21.
class Fixnum
	define_method(:can_drink_alcohol?) do
		self >= 21
	end
end

#Make an Fixnum#has_two_digits? method which returns true if the Fixnum is between 10 and 99, or -10 and -99.
class Fixnum
  define_method(:has_two_digits) do
  	if self.between?(10,99)
  		true
  	elsif self.between?(-99,-10)
  		true
  	else
  		false
  	end
  end
end