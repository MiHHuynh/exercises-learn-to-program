# Improve upon a method written in the book, called "Ask," which takes a yes/no question and returns the answer.

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

# ask 'Do you like eating tacos?'