def find_it(seq)
    arrayOfIntegers = [];
    for sequence in seq
        if arrayOfIntegers.select {|item| item[:number] === sequence}.length === 0
          arrayOfIntegers.push({ times: 1, number: sequence})
        else
          arrayOfIntegers.map { |item|
          if item[:number] === sequence
            item[:times] = item[:times] + 1
          end
          }
        end
      end
    arrayOfIntegers.map {
      |item, index|
      if item[:times] % 2 != 0
        return item[:number]
      end
    }
  end