# Write a program that asks for as many words as we want, one per line continuing until we just press ENTER
# on an empty line. Then it repeats the words back to us in alphabetical order.

words = []

while true
	input = gets.chomp
	if input == ''
		break
	end
	words.push(input)
end


words.sort.each do |word|
	puts word
end