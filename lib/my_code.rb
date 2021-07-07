# Your Code Here
def map(array)
  final =[]
  array.each {|x| final.push(yield(x))}
  final
end

#reduce(source_array){|memo, n| memo + n}

def reduce(array, sp=0)
  array.each{|x| sp = yield(x, sp) }
#To get around the nil error
  sp = false if sp == nil
  sp
end
