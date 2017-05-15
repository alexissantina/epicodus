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
  	cost = @volume + @weight * (delivery_speed/5)
    cost
  end
  
end