# Write a method that when passed an integer between 1 and 3000
# returns a string containing the new Roman numeral with subtraction.
# e.g. modern_roman_numeral 4 should return IV. / modern_roman_numeral 9 should return IX
# I before V or X indicates one less. e.g. IV = 4, IX = 9
# X before L or C indicates 10 less. e.g. XL = 40, XC = 90
# C before D or M indicates a hundred less. e.g. CD = 400, CM = 900

# For Reference:
# I = 1		V = 5		X = 10		L = 50		C = 100		D = 500		M = 1000

ROMAN_THOUSAND = 'M'
ROMAN_5HUNDRED = 'D'
ROMAN_HUNDRED = 'C'
ROMAN_FIFTY = 'L'
ROMAN_TEN = 'X'
ROMAN_FIVE = 'V'
ROMAN_ONE = 'I'

def modern_roman_numeral integer
	result = ''
	while integer != 0
		if integer >= 1000
			factor = integer/1000
			result += (ROMAN_THOUSAND * factor)
			integer = (integer - (factor * 1000))
		elsif integer >= 500
			if integer >= 900
				result += (ROMAN_HUNDRED + ROMAN_THOUSAND)
				integer -= 900
			else
				factor = integer/500
				result += (ROMAN_5HUNDRED * factor)
				integer = (integer - (factor * 500))
			end
		elsif integer >= 100
			if integer >= 400
				result += (ROMAN_HUNDRED + ROMAN_5HUNDRED)
				integer -= 400
			else
				factor = integer/100
				result += (ROMAN_HUNDRED * factor)
				integer = (integer - (factor * 100))
			end
		elsif integer >= 50
			if integer >= 90
				result += (ROMAN_TEN + ROMAN_HUNDRED)
				integer -= 90
			else
				factor = integer/50
				result += (ROMAN_FIFTY * factor)
				integer = (integer - (factor * 50))
			end
		elsif integer >= 10
			if integer >= 40
				result += (ROMAN_TEN + ROMAN_FIFTY)
				integer -= 40
			else
				factor = integer/10
				result += (ROMAN_TEN * factor)
				integer = (integer - (factor * 10))
			end
		elsif integer >= 5
			if integer == 9
				result += (ROMAN_ONE + ROMAN_TEN)
				integer -= 9
			else
				factor = integer/5
				result += (ROMAN_FIVE * factor)
				integer = (integer - (factor * 5))
			end
		elsif integer >= 1
			if integer == 4
				result += (ROMAN_ONE + ROMAN_FIVE)
				integer -= 4
			else
				factor = integer/1
				result += (ROMAN_ONE * factor)
				integer = (integer - (factor * 1))
			end
		end
	end
	return result
end

puts(modern_roman_numeral 4) # expecting: IV
puts(modern_roman_numeral 10) # expecting: X
puts(modern_roman_numeral 9) # expecting IX
puts(modern_roman_numeral 19) # expecting XIX
puts(modern_roman_numeral 25) # expecting XXV
puts(modern_roman_numeral 24) # expecting XXIV
puts(modern_roman_numeral 1093) # expecting MXCIII
puts(modern_roman_numeral 1992) # expecting MCMXCII
puts(modern_roman_numeral 1444) # expecting MCDXLIV