def map(source_array)
  new_array = []
  i = 0
  while source_array.length > i do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end

def reduce(source_array, starting_point= nil)
  if starting_point
    result = starting_point
    i = 0
  else
    result = source_array[0]
    i = 1
  end

  while source_array.length > i
    result = yield(result, source_array[x])
    i += 1
  end
result
end