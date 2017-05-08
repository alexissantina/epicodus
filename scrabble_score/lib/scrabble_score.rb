class String
  define_method(:scrabble_score) do
    scrabble_points = {}

    one_point = ["A", "E", "I", "L", "N", "O", "R", "S", "T", "U"]
    two_point = ["D", "G"]
    three_point = ["B", "C", "M", "P"]
    four_point = ["F", "H", "V", "W", "Y"]
    five_point = ["K"]
    eight_point = ["J", "X"]
    ten_point = ["Q", "Z"]

    for i in one_point
    	scrabble_points[i] = 1
    end
    for i in two_point
    	scrabble_points[i] = 2
    end
    for i in three_point
    	scrabble_points[i] = 3
    end
    for i in four_point
    	scrabble_points[i] = 4
    end
    for i in five_point
    	scrabble_points[i] = 5
    end
    for i in eight_point
    	scrabble_points[i] = 8
    end
    for i in ten_point
    	scrabble_points[i] = 10
    end
    
    word = self.split("")
    points = 0

    word.each do |letter|
      points += scrabble_points.fetch(letter.upcase)
    end
    
    points

  end
end