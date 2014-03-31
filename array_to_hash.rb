#write a method that takes an array of arrays and converts it to a single hash of
#key-value pairs

#Example: a =[[:a, 10], [:b, 20], [:c, 30]] => { :a => 10, :b => 20, :c => 30 }

def array_to_hash(array)
  mother_hash = {}
  array.each do |pair|
    mother_hash[pair.first] = pair.last
  end
  mother_hash
end