# Your Code Here
'my own map'
do "returns an array with all values made negative"
map([1, 2, 3, -9]){|n| n * n}
end

def map_to_no_change (source_array)
  source_array
end

def map_to_double(source_array)
  source_array.map {|x| x * 2}
end

def map_to_square(source_array)
  source_array.map {|x| x ** 2}
end

def reduce_to_total(source_array, starting_point=0)
  source_array.reduce(starting_point) {|sum, n| sum + n}
end

def reduce_to_all_true(source_array)
  source_array.reduce(0) {|memo, n| memo || n}
end

def reduce_to_any_true(source_array)
  source_array.reduce(0) {|memo, n| memo n = false}
end

end
