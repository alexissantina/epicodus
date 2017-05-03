class Fixnum
  define_method(:ping_pong) do
  	n = self
  	array = [0]
  	(1..n).each do |n|
	    if n % 15 == 0
	    	a = "\"ping-pong\""
	  	elsif n % 3 == 0
	  		a = "\"ping\""
	    elsif n % 5 == 0
	    	a = "\"pong\""
	    else
	    	a = n
	    end
	    array += [a]
	end
	puts "[" + array.join(", ") + "]"
  end
end