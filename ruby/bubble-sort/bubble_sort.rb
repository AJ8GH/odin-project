class Array
  def bubble_sort
    self.each_with_index do |element, index|
      return self if self[index + 1].nil?  
      if element > self[index + 1]
        self[index] = self[index + 1]
        self[index + 1] = element
      end
    end
    self
  end
end
