# Your Code Here

def map(array)
  counter = 0
  new_array = []

  while counter < array.length do
    new_array << yield(array[counter])
    counter += 1
  end
  new_array
end


def reduce(source_array, starting_point = 0)
  counter = 0
  value = starting_point
  memo = 0

  while counter < source_array.length do

    value += yield(memo, source_array[counter])
    counter += 1
  end
  value
end
