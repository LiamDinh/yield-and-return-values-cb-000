require 'pry'
=begin
def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end
=end
def hello(array)
  i = 0
  collection = []
  while i < array.length
  #  binding.pry
    collection << yield(array[i])
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
