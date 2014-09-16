numbers1 = [1, 2, 3, 4, 3, 7, 1]
numbers2 = [1, 2, 3, 4, 3, 7, 1]

def change_array(array1, array2)
  array1.uniq
  array2.uniq!
end

change_array(numbers1, numbers2)
puts "Caller not mutated: #{numbers1}" 
puts "Caller is mutated: #{numbers2}"

