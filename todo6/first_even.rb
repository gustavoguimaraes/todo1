def first_even(items)
  even_only_array = []
  items.each do |elem|
  	if elem % 2 == 0
  		even_only_array << elem
  	end
	end
  even_only_array[0]
end


first_even([300, 40, 21, 23, 5])