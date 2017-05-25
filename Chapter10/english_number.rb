# Write a method that takes in an integer and returns the number in written English.
# e.g. 5546 --> five thousand five hundred forty six

def english_number(number)
	if number < 0 # no negative numbers
		return 'Please enter a number that is not negative.'
	end
	if number == 0 # handling zero
		return 'zero'
	end

	num_string = '' # this is the string we will return
	
	ones_place = ['one', 'two', 'three',
				  'four', 'five', 'six',
				  'seven', 'eight', 'nine']
	
	tens_place = ['ten', 'twenty', 'thirty',
				  'forty', 'fifty', 'sixty',
				  'seventy', 'eighty', 'ninety']
	
	teens = ['eleven', 'twelve', 'thirteen',
			 'fourteen', 'fifteen', 'sixteen',
			 'seventeen', 'eighteen', 'nineteen']

	zillions = [['hundred', 2],
				['thousand', 3],
				['million', 6],
				['billion', 9],
				['trillion', 12],
				['quadrillion', 15]]

	# "left" is how much of the number we still have left to write
	# "write" is the part we are writing out right now

	left = number

	while zillions.length > 0
		zil_pair = zillions.pop
		zil_name = zil_pair[0]
		zil_base = 10 ** zil_pair[1]

		write = left/zil_base # how many zillions left?
		left = left - write*zil_base # subtract off those zillions

		if write > 0
			prefix = english_number(write)
			num_string = num_string + prefix.to_s + ' ' + zil_name

			if left > 0
				num_string = num_string + ' '
			end
		end
	end

	write = left/10 # how many tens left?
	left = left - write*10 # subtract those tens

	if write > 0
		if ((write == 1) and (left > 0))
			# since we can't write 'tenty two' instead of 'twelve', we have to make a special exception for these
			num_string = num_string + teens[left-1].to_s
			# the -1 is because teens[3] is fourteen, not thirteen due to zero index
			# since we took care of the digit in the ones place already, we have nothing left to write
			left = 0
		else
			num_string = num_string + tens_place[write-1].to_s
			# the -1 is because of zero indexing; tens_place[3] is forty not thirty
		end
		if left > 0 # so we don't write "sixtyfour"
			num_string = num_string + '-'
		end
	end
	write = left
	left = 0
	if write > 0
		num_string = num_string + ones_place[write-1].to_s
	end
	return num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(1991)
puts english_number(101)
puts english_number(99)
puts english_number(3211)
puts english_number(99999)
puts english_number(1000192)