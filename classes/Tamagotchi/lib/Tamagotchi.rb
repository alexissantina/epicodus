class Tamagotchi

  define_method(:initialize) do |name|
	@name = name
	@food_level = 10
	@sleep_level = 10
	@activity_level = 10
  end

  define_method(:food_level) do
  	@food_level
  end

  define_method(:name) do
  	@name
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:is_alive) do
  	return @food_level > 0
  end

  define_method(:set_food_level) do |food_level|
  	@food_level = food_level
  end

  define_method(:time_passes) do
  	if @sleep_level >= 0
  	  @sleep_level -= 1
  	end
  	if @food_level >= 0
  	  @food_level -= 1
  	end
  end

  define_method(:play) do
  	if @activity_level < 10
  		@activity_level += 1
  		self.time_passes()
    end
  end

  define_method(:feed) do
  	if food_level < 10
  		@food_level += 2
  		self.time_passes()
    else
    	@activity_level -= 2
    end
  end

end