#Create a variable called grade and set it equal to A, B, C, D or F. Use the above tools to print out one message if the grade is an A, one message if the grade is a B or a C, and one message if the grade is D or F.
grade = "D"

if grade == "A"
	puts "You are a stellar student!"
elsif grade == ("B" || "C")
	puts "Good job, you passed!"
elsif grade == ("D" || "F")
	puts "You're a flunker but we still like you."
end

#Create a variable called temperature and set it equal to a Fixnum to represent a number of degrees Fahrenheit.
#Check to see if temperature is within 60-80 degrees
#if it is then print out "It's balmy outside!
#and a different message if it isn't
#You will have to use a combination of a few of these:
#<() (less-than), <=() (less-than-or-equal-to), >() (greater-than), >=() (greater-than-or-equal-to) and &().
temperature = 80

if temperature.between?(60, 80)
	puts "It's balmy outside!"
else
	puts "Poops"
end


#Create a variable to store your first name.
#Then use if and else to print one message if your name begins
#with a letter between A and M, and a different message if it begins
#with a letter between N and Z.
#Hint: Remember the String#split method and the Array#at method from the section on "Arrays and ranges".
#Also, you can check if a number or letter is within a range by using the Range#include? method.
#For example: (0..4).include?(1) will return true because 1 is between 0 and 4.
name = "Zelda"

name_array = name.split("")
if name_array[0].between?("A", "M")
	puts "Your name starts with a letter between A and M"
else
	puts "Your name starts with a letter between N and Z"
end




