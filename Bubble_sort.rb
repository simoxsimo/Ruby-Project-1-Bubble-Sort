def bubble_sort(array)
	for i in (0..array.size-1)
		for j in (0..array.size-2)
			array[j], array[j+1] = array[j+1], array[j] if array[j] > array[j+1]
		end
	end
	array
end

arr = [9, 8, 7, 6, 5, 4, 3, 2, 1]
print bubble_sort(arr)
