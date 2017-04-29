class String
  define_method(:leetspeak)  do
  	phrase = self.split("")
  	phrase_new = []
  	phrase.each_with_index do |letter, index|
  		case letter
  		when "E", "e" 
  			letter = "3"
  		when "O", "o"
  			letter = "0"
  		when "I"
  			letter = "1"
  		when "s", "S"
        if index == 0
          letter
        elsif phrase[index - 1] == " "
          letter
        else
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
	"Everyone is cool".leetspeak
end