require 'pry'

def hello(array)
  i = 0
  new_array = []
  while i < array.length
    yield(array[i]) >> new_array
    i += 1
  end
  new_array
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
