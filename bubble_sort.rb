def bubble_sort(arr)
  # Checks if array is ordered
  is_ordered = false
  until is_ordered # if array is not ordered
    is_ordered = true
    (0..(arr.length - 2)).each do |i| # the second to last item is the length minus 2
      next unless arr[i] > arr[i + 1] # compare items

      arr[i], arr[i + 1] = arr[i + 1], arr[i] # swap items
      is_ordered = false
    end
  end
  arr
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
puts bubble_sort(%w[tree b car plane])
