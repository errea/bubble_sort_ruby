def bubble_sort(arr)
  len = arr.length
  # the array must have 2+ items if not, return the array
  if len < 2
    arr
  else
    # returns a sorted array
    sorted_arr(arr, len)
  end
end

def sorted_arr(arr_sort, arr_len)
  # Checks if array is ordered
  is_ordered = false
  until is_ordered # if array is not ordered
    is_ordered = true
    for i in 0..(arr_len - 2) do # the second to last item is the length minus 2
      item1 = arr_sort[i] # current item
      item2 = arr_sort[i + 1] # next item
      if item1 > item2 # compare items
        arr_sort[i] = item2 # swap items 
        arr_sort[i + 1] = item1
        is_ordered = false
      end
    end
  end
  return arr_sort
end

puts bubble_sort( [4, 3, 78, 2, 0, 2] )
