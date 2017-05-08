# Write a method to sort words. It should work regardless of capitalization.

def sort some_array
	recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
	current_smallest_value = unsorted_array[0]
	current_smallest_index = 0
	next_index = current_smallest_index + 1
	while next_index != unsorted_array.size()
		if (current_smallest_value > unsorted_array[next_index])
			current_smallest_value = unsorted_array[next_index]
			current_smallest_index = next_index
			next_index = current_smallest_index + 1
		else
			next_index += 1
		end
	end
	sorted_array << current_smallest_value
	unsorted_array = unsorted_array - sorted_array
	if unsorted_array.size() > 0
		recursive_sort(unsorted_array, sorted_array)
	end
	return sorted_array
	# start at 1st one
	# set to current_smallest_value
	# set current_smallest_index to 0
	# go to the second current_smallest_index
	# if current_smallest_value > second
	# 	current_smallest_value = second
	# 	current_smallest_index = second_index
	# else
	# 	move to next to compare
	# end
	# add current_smallest_value to sorted_array
	# while not end of array
	# 	if current_value != current_smallest_value
	# 		add that value to the unsorted_array
	# 	end
	# end
	# recursive_sort(unsorted_array, sorted_array)
end

puts(sort([1,5,9,0,3]).to_s)
puts(sort([7,6,5]).to_s)
puts(sort(['a','b','c']).to_s)
strings_array = ["what", "yolo", "YOLO", "alpha", "ALPHA"]
puts(sort(strings_array).to_s)