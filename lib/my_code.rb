# Your Code Here
def map(source_array)
  i = 0
  new = []
  while i < source_array.length do
    new[i] = yield(source_array[i])
    i += 1
  end
  return new
end

map([1, 2, 3, -9]) {|n| n * -1}
map([1, 2, 3, -9]) {|n| n}
map([1, 2, 3, -9]) {|n| n * 2}
map([1, 2, 3, -9]) {|n| n * n}


def reduce(source_array, sum=0)
  i = 0
  while i < source_array.length do
    sum = yield(sum, source_array[i])
    i += 1
  end
  if sum == 0
    return true
  else
    return sum
  end
end

reduce([1,2,3]) {|memo, n| memo + n}
