class String
  define_method(:leetspeak)  do
  	phrase = self.split("")
  	phrase_new = []
  	phrase.each do |letter|
  		case letter
  		when letter == "E", "e" 
  			letter = "3"
  		when letter == "O", "o"
  			letter = "0"
  		when letter == "I"
  			letter = "1"
  		when letter == "s"
  			if letter.index() != 0
  			  letter = "z"
  			end
  		end
  		phrase_new.push(letter)
  	end
  	phrase_new = phrase_new.join("")
  	return phrase_new
  end
end

if $0 == __FILE__
	"Everyone is cool.".leetspeak
end