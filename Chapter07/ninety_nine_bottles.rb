# Write a program that prints out the lyrics to "99 Bottles of Beer on the Wall."

bottles = 99
while bottles != 0
	if bottles == 2
		puts(bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer! Take one down and pass it around, " + (bottles-1).to_s + " bottle of beer on the wall.")	
	elsif bottles == 1
		puts(bottles.to_s + " bottle of beer on the wall, " + bottles.to_s + " bottle of beer! Take one down and pass it around, no more bottles of beer on the wall.")
	else
		puts(bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer! Take one down and pass it around, " + (bottles-1).to_s + " bottles of beer on the wall.")
	end
	bottles -= 1
end