# Your Code Here

require 'pry'

def map(array)
  counter = 0
  new_array = []

  while counter < array.length do
    new_array << yield(array[counter])
    counter += 1
  end
  new_array
end


def reduce(source_array, starting_point = nil)

  if starting_point
    value = starting_point
    counter = 0
  else
    value = source_array[0]
    counter = 1
  end

  while counter < source_array.length
    value = yield(value, source_array[counter])
    counter += 1
  end
  value
end
