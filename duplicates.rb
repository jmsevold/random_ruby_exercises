#given an array of numbers, find all duplicates

def duplicates_select(array)
  doubles = array.select do |num|
    array.count(num) > 1
  end
  doubles.uniq
end
  

def duplicates_each(array)
   doubles = []
   array.each do |num|
    doubles << num if array.count(num) > 1
  end
  doubles.uniq
end