# frozen_string_literal: true

def bubble_sort(array)
  size = array.size
  size.times do
    array.each_with_index do |value, i|
      break if i == size - 1

      array[i], array[i + 1] = array[i + 1], array[i] if value > array[i + 1]
    end
  end
  array
end

def bubble_sort_by(array)
  size = array.size
  size.times do
    array.each_with_index do |_, i|
      break if i == size - 1

      if yield(array[i], array[i + 1]) >= 1
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end
  array
end
