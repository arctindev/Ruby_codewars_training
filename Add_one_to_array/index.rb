def up_array(arr)
    if arr.length == 0
      return nil
    end
    arr.map {
      |item|
      if item < 0
        return nil
      elsif item > 9
        return nil
      end
    }
    number = arr.join('').to_i + 1
    
    return "#{number}".split("").map {
      |item|
      item.to_i
    }
  end