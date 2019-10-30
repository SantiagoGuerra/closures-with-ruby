# Instances created of a class are distinct from each other. 
# In other words, each instance has its own state.


=begin
  COUNTER PROGRAM

  * Get the current value of the counter. 
  * Increment the counter
  * Decrement the counter
=end

counter = lambda do |initial_value|
  get_value = lambda { initial_value}
  increment_val = lambda { initial_value += 1}
  decrement_val = lambda { initial_value -= 1}
  {
    get_value: get_value,
    increment_val: increment_val,
    decrement_val: decrement_val
  }
end


c1 = counter.call(0)

c1[:increment_val].call
c1[:increment_val].call
c1[:increment_val].call
c1[:increment_val].call
c1[:increment_val].call
c1[:decrement_val].call


puts c1[:get_value].call



# add citizens with clousures

Register = lambda do |name, city|
  if city.include?("a")
    get_data = lambda { "Congrulations #{name}, your #{city} is elegible to participate"}
  else
    get_data = lambda { "Sorry #{name}, you are not elegible"}
  end

  {get_data: get_data}

end


col = Register.call("Santiago", "Medellin")

puts col[:get_data].call