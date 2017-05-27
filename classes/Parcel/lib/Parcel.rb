class Parcel
  define_method(:initialize) do |length, width, height, weight|
  	@length = length
  	@width = width
  	@height = height
  	@weight = weight
  end

  define_method(:volume) do
  	@volume = @length * @width * @height
  	@volume
  end
  
  define_method(:cost_to_ship) do |delivery_speed|
  	if @weight = nil
  		puts "Please enter the weight of your package."
  		gets @weight
  	else
	  	cost = ((@volume.to_i + @weight.to_i) * delivery_speed.to_i)
	    cost
	  end
  end
  
end