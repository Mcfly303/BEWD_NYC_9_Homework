# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(


def sing 
	bottles = 99
	
	while (bottles > 0)
		if (bottles > 1)
			new_bottles = bottles - 1
			puts "#{bottles} bottles of beer on the wall"
			puts "#{bottles} bottles of beer!"
			puts "You take one down and pass it around,"
			puts "#{new_bottles} bottles of beer on the wall!"
			puts ""
			bottles -= 1
		else 
			puts "1 bottle of beer on the wall"
			puts "1 bottle of beer!"
			puts "You take one down and pass it around,"
			puts "No more bottles of beer on the wall :-("
			puts ""
			break
		end
	end
end

sing