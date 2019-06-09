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


def reduce(array, starting_point = 0)
  counter = 0
  memo = starting_point

  while counter < array.length do
    yield(array) + memo
    counter += 1
  end
  memo
end
