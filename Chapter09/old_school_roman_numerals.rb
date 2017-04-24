# In the early days of Roman numerals, the Romans didn't bother with any of the
# subtraction "IX" nonsense. It was straight addition, biggest to smallest.
# So 9 was written VIII and so on. Write a method that when passed an integer between
# 1 and 3000 returns a string containing the proper old-school Roman numeral.
# e.g. old_roman_numeral 4 should return IIII.

# For Reference:
# I = 1		V = 5		X = 10		L = 50		C = 100		D = 500		M = 1000

ROMAN_THOUSAND = 'M'
ROMAN_5HUNDRED = 'D'
ROMAN_HUNDRED = 'C'
ROMAN_FIFTY = 'L'
ROMAN_TEN = 'X'
ROMAN_FIVE = 'V'
ROMAN_ONE = 'I'

def old_roman_numeral integer
	result = ''
	while integer != 0
		if integer >= 1000
			factor = integer/1000
			result += (ROMAN_THOUSAND * factor)
			integer = (integer - (factor * 1000))
		elsif integer >= 500
			factor = integer/500
			result += (ROMAN_5HUNDRED * factor)
			integer = (integer - (factor * 500))
		elsif integer >= 100
			factor = integer/100
			result += (ROMAN_HUNDRED * factor)
			integer = (integer - (factor * 100))
		elsif integer >= 50
			factor = integer/50
			result += (ROMAN_FIFTY * factor)
			integer = (integer - (factor * 50))
		elsif integer >= 10
			factor = integer/10
			result += (ROMAN_TEN * factor)
			integer = (integer - (factor * 10))
		elsif integer >= 5
			factor = integer/5
			result += (ROMAN_FIVE * factor)
			integer = (integer - (factor * 5))
		elsif integer >= 1
			factor = integer/1
			result += (ROMAN_ONE * factor)
			integer = (integer - (factor * 1))
		end
	end
	return result
end

puts(old_roman_numeral 4) # expecting: IIII
puts(old_roman_numeral 10) # expecting: X
puts(old_roman_numeral 19) # expecting XVIIII
puts(old_roman_numeral 25) # expecting XXV
puts(old_roman_numeral 1093) # expecting MLXXXXIII
puts(old_roman_numeral 1992) # expecting MDCCCCLXXXXII

# NEXT THING TO BE CONTINUED:
# wrap up everything in each if block into a function to avoid repetition
# Is there a way to make this better?

# def add_roman_letter (roman_char, divisor, integer)
# 	factor = integer/divisor
# 	result += (roman_char * factor)
# 	return result
# 	if roman_number == 1000
# 		factor = integer/roman_number
# 		result += (ROMAN_THOUSAND * factor)
# 		integer = (integer - (factor * 1000))
# 	elsif roman_number == 500
# 		factor = integer/500
# 		result += (ROMAN_5HUNDRED * factor)
# 		integer = (integer - (factor * 500))
# 	elsif roman_number == 100
# 		factor = integer/100
# 		result += (ROMAN_HUNDRED * factor)
# 		integer = (integer - (factor * 100))
# 	elsif roman_number == 50
# 		factor = integer/50
# 		result += (ROMAN_FIFTY * factor)
# 		integer = (integer - (factor * 50))
# 	elsif roman_number == 10
# 		factor = integer/10
# 		result += (ROMAN_TEN * factor)
# 		integer = (integer - (factor * 10))
# 	elsif roman_number == 5
# 		factor = integer/5
# 		result += (ROMAN_FIVE * factor)
# 		integer = (integer - (factor * 5))
# 	elsif roman_number == 1
# 		factor = integer/1
# 		result += (ROMAN_ONE * factor)
# 		integer = (integer - (factor * 1))
# 	end
# 	result += 
# end