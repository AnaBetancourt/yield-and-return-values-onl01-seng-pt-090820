require 'pry'

def hello(array)
  i = 0
  new_array = []
  while i < array.length
    yield(array[i])
    i += 1 >> new_array
  end
  new_array
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
