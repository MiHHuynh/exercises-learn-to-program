# Write a program that will take in a start and end year and print all the leap years including and between.
# Leap years are divisible by 4. However, if a year is divisible by 4 AND by 100, it is NOT a leap year (e.g. 1800, 1900)
# BUT, if it is divisible by 4, divisible by 100, AND divisible by 400 (e.g. 1600, 2000) it IS a leap year.

puts 'Enter start year: '
start_year = gets.chomp.to_i
puts 'Enter end year: '
end_year = gets.chomp.to_i

puts 'Leap years between ' + start_year.to_s + ' and ' + end_year.to_s + ' are:'

while start_year <= end_year
	divisible_by_4 = false
	if start_year%4 == 0
		divisible_by_4 = true
	end

	divisible_by_100 = false 
	if start_year%100 == 0
		divisible_by_100 = true
	end

	divisible_by_400 = false
	if start_year%400 == 0
		divisible_by_400 = true
	end

	is_leap_year = false
	if (divisible_by_4 && divisible_by_100 && divisible_by_400) || (divisible_by_4 && divisible_by_100 != true)
		is_leap_year = true
	end

	if is_leap_year
		puts start_year.to_s
	end
	start_year += 1
end