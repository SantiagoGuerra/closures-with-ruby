# variable defined in a parent 


# Lambdas are Ruby’s version of anonymous functions found in other languages


# Whenever an inner lambda refers to a variable that is not declared within it, 
# but that variable is declared in the parent scope of that lambda, that is a free variable. 


## RULES FOR A CLOSURE
# * must be a function
# * its body references some variable is a parent scope
chalkboard_gag = lambda do |msg|
  lambda do |i|
    prefix = "I will not"
    "#{prefix} #{msg + i}"
  end
end

el = chalkboard_gag.call("hola").call "Adios"

puts el