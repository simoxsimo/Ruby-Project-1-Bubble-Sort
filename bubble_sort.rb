# frozen_string_literal: true

def bubble_sort(array)
  size = array.size
  size.times{
    array.each_with_index{|value, i|
      break if i==size-1
      array[i],array[i+1] = array[i+1],array[i] if value > array[i+1]
    }
  }
	array
end

def bubble_sort_by (array)
  size = array.size
  size.times{
    array.each_with_index{|value, i|
      break if i==size-1
      array[i],array[i+1] = array[i+1],array[i] if yield(array[i],array[i+1])>=1
    }
  }
	array
end

print bubble_sort_by(["hi","hello","hey","only","meat","i","dflkasdjfl"]){|left,right| left.length - right.length}
print bubble_sort([7,6,5,4,3,2,1])