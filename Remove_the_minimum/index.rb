def remove_smallest(numbers)
    min_number = numbers.min;
    indexOfMin = numbers.index(min_number)
    numbers.select.with_index { |number, index| 
    index != indexOfMin}
  end
  