class String
  define_method(:beats?) do |play2|
  	play1 = self
    if (play1 == "rock" && play2 == "scissors") ||
    	(play1 == "paper" && play2 == "rock") ||
    	(play1 == "scissors" && play2 == "paper")
    	  true
    elsif (play2 == "rock" && play1 == "scissors") ||
    	(play2 == "paper" && play1 == "rock") ||
    	(play2 == "scissors" && play1 == "paper")
    	  false
    else
    	puts "This was a tie. Try again."
    end
  end
end
