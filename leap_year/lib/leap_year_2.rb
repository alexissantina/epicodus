puts 'Enter a year'
year1 = gets.chomp.to_i
puts 'Enter another year'
year2 = gets.chomp.to_i
puts 'Here are all the leap years that happened between those two years:'

if year1 > year2
	year1,year2 = year2,year1
end


for x in year1..year2 do
	if x%4 == 0 and x%100 != 0
		puts x
	end
	if x%400 == 0
		puts x
	end
end
