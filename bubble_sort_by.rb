def bubble_sort_by(arr)
  len = arr.length
  # the array must have 2+ items if not, return the array

  # Checks if array is ordered
  is_ordered = false
  until is_ordered # if array is not ordered
    is_ordered = true
    (0..(len - 2)).each do |i| # the second to last item is the length minus 2
      if yield(arr[i], arr[i + 1]).positive? # compare items
        arr[i], arr[i + 1] = arr[i + 1], arr[i] # swap items
        is_ordered = false
      end
    end
  end
  arr
end

sorted_array = bubble_sort_by(%w[hi hello hey hola]) do |left, right|
  left.length - right.length
end

puts sorted_array
