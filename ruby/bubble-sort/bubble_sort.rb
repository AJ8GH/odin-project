def bubble_sort(array)
  count = 0
  array.each_with_index do |element, index|
    unless array[index + 1].nil?
      if element > array[index + 1]
        new_element = array[index + 1]
        array[index] = new_element
        array[index + 1] = element
        count += 1
      end
    end
  end
  count.zero? ? array : bubble_sort(array)
end
