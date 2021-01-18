def bubble_sort(array)
  new_ary = array
  new_ary.each_with_index do |element, i|
    unless new_ary[i + 1].nil?
      if element > new_ary[i + 1]
        array[i] = new_ary[i + 1]
        array[i + 1] = element
      end
    end
  end
  array == array.sort ? array : bubble_sort(array)
end
