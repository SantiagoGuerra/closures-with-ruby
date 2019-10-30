# static scoping
msg = "drive the principal's car"
  
3.times do
  prefix = "I will not" # variable inside, only will works inside
  puts "#{prefix} #{msg}"
end