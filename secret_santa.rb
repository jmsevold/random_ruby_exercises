sample = (1..1000).to_a



def find_target_faster(nums, target)
	return bs(nums, target, 0, nums.size)
end

# the real work
def bs(nums, target, lower, upper)
	return nil if lower > upper

	mid = (lower + upper) / 2
	curr_item = nums[mid]

	if curr_item == target
		return mid
	elsif curr_item < target
		return bs(nums, target, mid+1, upper)
	else
		return bs(nums, target, lower, mid-1)
	end
end


# list = ['bob', 'jill', 'sherry']
# 
# ‘Sherry is assigned to Bob’
# ‘bob is assigned to Jill’
# ‘Jill is assigned to Sherry’
# 
# 1. person A cannot get him/herself
# 2. if Person B is assigned to Person A, Person B cannot get person A
# 3. it should be randomized each time


                  #notes

# In the final hash, a key is the gift giver, and the key is the gift receiever. A giver(key) cannot also 
#be the receiver (value) to the value to which it is the key elsewhere in that hash. The inverse of that 
#key-value pair cannot exist.
#a key (giver) cannot appear twice as a key, but it MUST appear once as a value
# all names must appear once as a KEY


# 1. call.shuffle! on the list.
# 2. declare a hash called pairs
# 3. interate through the array, making each a key in the pairs hash.
# 4. interate through the array, this time assigning the names as values to each key in the hash
  

def secret_santa(names)
  names.shuffle!
  pairs = {}
  names.each do |name|
    pairs[name] = ''
  end
    pairs.each do |giver, receiver|
      names.each do |name|
        if giver == name || pairs.values.count(name) > 0 || pairs[name] == giver
          next
        else
          pairs[giver] = name
        end
      end
    end
    pairs.each do |k,v|
      puts "#{k} is assigned to #{v}"
    end
end
list = ['bob', 'jill', 'sherry']
secret_santa(list)


# list = ['sherry', 'bob', 'jill']
# pairs => {"sherry"=>"", "bob"=>"", "jill"=>""}

secret_santa(list)

list = ['sherry', 'jill', 'bob']

def efficient_secret_santa(list)
  list.shuffle!
  list.each_with_index do |name, index|
    if index == list.length - 1
      puts "#{name} is assigned to #{list[0]}"
    else
      puts "#{name} is assigned to #{list[index + 1]}"
    end
  end
end

efficient_secret_santa(list)  











