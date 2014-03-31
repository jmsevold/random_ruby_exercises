def fib(n)
  sequence = [0,1]
  until sequence.count == n
    last_two = sequence[-2..-1]
    sequence.push(last_two.reduce(:+))
  end
  p sequence
  nth_term = sequence[n-1]
  puts "The number at position #{n} is #{nth_term}"
end