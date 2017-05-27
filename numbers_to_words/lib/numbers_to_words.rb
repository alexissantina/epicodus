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
        words.fetch(ten_spot) + " " + (self % 10).numbers_to_words
  	when 100..999
  		# hundred_spot = ((self/100).to_i) * 100
  		# ten_spot = (((self - hundred_spot)/10).to_i) * 10
  		# words.fetch(hundred_spot/100) + " hundred " + words.fetch(ten_spot) + " " + words.fetch(self - hundred_spot - ten_spot)
  		hundred_spot = (self / 100).to_i
  		words.fetch(hundred_spot) + " hundred " + (self % 100).numbers_to_words
  	when 1000..999999
  		thousand_spot = (self / 1000).to_i
        thousand_spot.numbers_to_words + " thousand " + (self % 1000).numbers_to_words
  		# words.fetch(thousand_spot) + " thousand " + (self % 1000).numbers_to_words
  	when 1000000..999999999
  		million_spot = (self/1000000).to_i
  		million_spot.numbers_to_words + " million " + (self % 1000000).numbers_to_words
  	when 1,000,000,000..999999999999
  		billion_spot = (self/1000000000).to_i
  		billion_spot.numbers_to_words + " billion " + (self % 1000000000).numbers_to_words
  	when 1,000,000,000,000..999999999999999
  	 	trillion_spot = (self/1000000000000).to_i
  	 	trillion_spot.numbers_to_words + " trillion " + (self % 1000000000000).numbers_to_words
  	else
  		puts "no dice bubba face"
  	end

  end
end