class Fixnum
  define_method(:numbers_to_words) do
  	words = {
  		0 => "",
  		1 => "one",
  		2 => "two",
  		3 => "three",
  		4 => "four",
  		5 => "five",
  		6 => "six",
  		7 => "seven",
  		8 => "eight",
  		9 => "nine",
  		10 => "ten",
  		11 => "eleven",
  		12 => "twelve",
  		13 => "thirteen",
  		14 => "fourteen",
  		15 => "fifteen",
  		20 => "twenty",
  		30 => "thirty",
  		40 => "forty",
  		50 => "fifty",
  		60 => "sixty",
  		70 => "seventy",
  		80 => "eighty",
  		90 => "ninety"
  	}

    case self
  	when 1..15
  	  words.fetch(self)
  	when 16..19
  	  words.fetch(self - 10) + "teen"
  	when 20..99
  		ten_spot = ((self/10).to_i) * 10
        words.fetch(ten_spot) + " " + words.fetch((self - ten_spot))
  	when 100..999
  		hundred_spot = ((self/100).to_i) * 100
  		ten_spot = (((self - hundred_spot)/10).to_i) * 10
  		words.fetch(hundred_spot/100) + " hundred " + words.fetch(ten_spot) + " " + words.fetch(self - hundred_spot - ten_spot)
  	else
  		puts "no dice bubba face"
  	end

  end
end