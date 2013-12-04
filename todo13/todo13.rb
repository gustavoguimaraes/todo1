
require 'awesome_print'


class Array
  def version_sort
    ___
  end
end



filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]

# def to_int(elem)
# elem.int unless elem == ""

# end


file_array = []

filenames.each do |string|
  a = string
  b = (string.split(/(?<=\-)(.*)(?=\.e)/))[1]
  file_array << [a, b]
end

file_array.sort do |x, y|
 
  if x[1][0]  <=> y[1][0] == 0
    if x[1][1]  <=> y[1][1] == 0
        if x[1][2]  <=> y[1][2] == 0
            x[1][3]  <=> y[1][3]
        else
            x[1][2]  <=> y[1][2]
        end
      else
        x[1][1]  <=> y[1][1]
      end
    else
      x[1][0]  <=> y[1][0]
    end
  end 

end




# version_sorted_filenames = [
#   "foo-1.ext",
#   "foo-1.3.ext",
#   "foo-1.8.7.ext",
#   "foo-1.9.3.ext",
#   "foo-1.10.2.ext",
#   "foo-1.11.ext",
#   "foo-1.50.ext",
#   "foo-2.0.ext",
#   "foo-2.0a.ext",
#   "foo-2.0b.ext",
#   "foo-2.0.0.ext",
#   "foo-2.0.1.ext",
#   "foo-2.01.ext",
#   "foo-2.1.ext",
#   "foo-2.01a.ext",
#   "foo-2.007.ext",
#   "foo-2.012b.ext",
#   "foo-6.ext",
#   "foo-10.ext",
#   "foo-10.1.ext",
#   "foo-13.ext",
#   "foo-25.ext",
#   "foo-100.ext",
# ]
# assert_equal filenames.version_sort, version_sorted_filenames