def unique_in_order(iterable)
    if iterable.length == 0
      return []
    end
    
    resultArray = [];
    tempChar = "";
    
    if iterable.instance_of? Array
      arrayOfChars = iterable
      for char in arrayOfChars
      if char != tempChar
        resultArray.push(char)
      end
      tempChar = char
    end
      return resultArray
    end
    
    arrayOfChars = iterable.split("")
    for char in arrayOfChars
      if char != tempChar
        resultArray.push(char)
      end
      tempChar = char
    end
    resultArray
  end