def two_sum(numbers, target)
    indexOfFirst = 0
    indexOfSecond = 0
    
    numbers.map.with_index {|firstNumber, firstNumberIndex| 
      numbers.map.with_index {|secondNumber, secondNumberIndex| 
        if firstNumber+secondNumber == target
          if firstNumberIndex != secondNumberIndex
          indexOfFirst = firstNumberIndex
          indexOfSecond = secondNumberIndex
            end
        end
      }
      }
    return [indexOfFirst, indexOfSecond]
  end