def bubble_sort_by(arr)
  len = arr.length
  # the array must have 2+ items if not, return the array

  # Checks if array is ordered
  is_ordered = false
  until is_ordered # if array is not ordered
    is_ordered = true
    (0..(len - 2)).each do |i| # the second to last item is the length minus 2
      item1 = arr[i] # current item
      item2 = arr[i + 1] # next item
      next unless item1 > item2 # compare items

      arr[i] = item2 # swap items
      arr[i + 1] = item1
      is_ordered = false
    end
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
puts bubble_sort(%w[tree b car plane])
