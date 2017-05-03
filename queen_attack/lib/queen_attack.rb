class Array
  define_method(:queen_attack?) do |opp_coord|
  	queen_coord = self
    if queen_coord[0] == opp_coord[0]
    	true
    elsif queen_coord[1] == opp_coord[1]
    	true
    elsif (queen_coord[0] - opp_coord[0]) == (queen_coord[1] - opp_coord[1])
    	true
    else
    	false
    end
  end
end

