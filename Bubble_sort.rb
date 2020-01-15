def bubble_sort(array)
	for i in (0..array.size-1)
		for j in (0..array.size-2)
			array[j], array[j+1] = array[j+1], array[j] if array[j] > array[j+1]
		end
	end
	array
end

def bubble_sort_by (array)
	for j in (0..array.size-1)
		for i in (0..array.size-2)
			if yield(array[i],array[i+1])>=1
				array[i],array[i+1] = array[i+1],array[i]
			end
		end
	end
	array
end

print bubble_sort_by(["hi","hello","hey","only","meat","i","dflkasdjfl"]){|left,right| left.length - right.length}