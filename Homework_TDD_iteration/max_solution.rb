# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class

def maximum(arr)
largest_array = 0
	arr.each do| num |
		if num > largest_array
			largest_array = num
		end
	end
	largest_array
#Only putting arr.max  or arr.sort.last would also work but this is cheating
end


maximum([2,34,5000,167,1187])

# now rewrite this as a method on the array class

class Array
  def maximum
  largest_array = 0
	each do| num |
		if num > largest_array
			largest_array = num
		end
	end
	largest_array
  end
end
