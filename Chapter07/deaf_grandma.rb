# Write a "Deaf Grandma" program. Whatever you say to Grandma (whatever you type in), she should
# respond with this: "HUH?! SPEAK UP, SONNY!" unless you shout it (type in all caps). If you shout, 
# she can hear you (or at least she thinks so) and yells back: "NO, NOT SINCE 1938!"
# Extended 1: Have grandma shout a different year each time, maybe any year at random between 1930 and 1950.
# Extended 2: You can't stop talking to Grandma until you shout "BYE."
# Extended 3: You have to shout 3 times in a row to end the program/stop talking to grandma.

bye_count = 0

while true
	puts "Say something to Grandma: "
	phrase = gets.chomp
	if phrase.downcase == "bye"
		bye_count += 1
	else
		bye_count = 0
	end
	if bye_count == 3
		puts "BYE, SONNY!"
		break
	end
	if phrase != phrase.upcase
		puts "HUH?! SPEAK UP, SONNY!"
	elsif phrase == phrase.upcase
		puts "NO, NOT SINCE " + rand(1800..1951).to_s + "!"
	end
end