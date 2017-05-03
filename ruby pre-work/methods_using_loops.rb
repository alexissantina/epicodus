#Make an upcase! method on Array that changes the receiver.
class Array
   define_method(:upcase!) do
     self.each() do |string|
       string.upcase!
     end
     self
   end
 end

#Make a product method on Range that multiples the numbers in the range.
class Range
   define_method(:product) do
     product = 1
     self.each() do |n|
       product = product * n
     end
     product
   end
end

#Make a String method called triple_each_letter(). For example, if I start with the String "Hello" I want #to be able to call "Hello".triple_each_letter() and have it return "HHHeeellllllooo"
class String
   define_method(:triple_each_letter) do
     tripled_string = ""
     tripled_array = []
     array = self.split("")
     array.each() do |letter|
       tripled_letter = letter + letter + letter
       tripled_array = tripled_array.push(tripled_letter)
     end
     tripled_string = tripled_array.join("")
     tripled_string
   end
end

#Turn the method you just wrote, triple_each_letter(), into a new method called duplicate_each_letter() #which takes a Fixnum argument for the number of times to duplicate each letter in the String that we call #the method on. For example, if I call "Hi".duplicate_each_letter(5) it should return "HHHHHiiiii". Or, #"Epicodus".duplicate_each_letter(2) would give me "EEppiiccoodduuss".

class String
   define_method(:duplicate_each_letter) do |n|
     duplicated_string = ""
     duplicated_array = []
     duplicated_letter = ""
     array = self.split("")
       array.each() do |letter|
        n.times do
       	duplicated_letter += letter
       end
     end
     duplicated_array = duplicated_array.push(duplicated_letter)
     duplicated_string = duplicated_array.join("")
     duplicated_string
   end
end

