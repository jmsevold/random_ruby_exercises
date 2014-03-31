#write me a function called intersection
#it takes two arrays
#and it returns an array of numbers found in both arrays


def intersection_while(array_1,array_2)
  array_3 = []
  i = 0
  while i < array_1.length
    if array_2.include?(array_1[i])
      array_3 << array_1[i]
    end
    i += 1
  end
  puts array_3.inspect
end

intersection_while([1,2,3],[1,2,3,4,5,6])

def intersection_each(array_1,array_2)
  array_3 = []
  array_2.each do |x|
    if array_1.include?(x)
      array_3 << x
    end
  end
  array_3
end
intersection_each([1,2,3],[1,2,3,4,5,6])