def first_even(items)
 items.select{|elem| elem % 2 == 0}.first
end

#first_even([300, 40, 21, 23, 5])