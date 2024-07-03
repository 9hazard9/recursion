def merge_sort(unsorted_arr)
  #returns the provided array if length is <= 1
  if unsorted_arr.length <= 1
    return unsorted_arr
  end
  
  #splits array and then merge sorts the halves
  mid = (unsorted_arr.length/2).round
  left_arr = merge_sort(unsorted_arr.slice(0...mid))
  right_arr = merge_sort(unsorted_arr.slice(mid...unsorted_arr.length))

  merge(left_arr, right_arr)
end

def merge(left_arr, right_arr)
  sorted_arr = []
  
  while !left_arr.empty? && !right_arr.empty? do
    if left_arr.first < right_arr.first
        sorted_arr << (left_arr.shift)
    else   
        sorted_arr << (right_arr.shift)
    end
  end 
  
  return sorted_arr.concat(left_arr).concat(right_arr)
end