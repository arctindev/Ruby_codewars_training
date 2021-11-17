def count_chars(s)
    arrayOfChars = s.split(//)
    resultArray = {}
    if arrayOfChars.length == 0 
      return {}
    end
    for char in arrayOfChars
      if resultArray[char]
      resultArray[char] = resultArray[char] + 1
        else
      resultArray[char] = 1;
        end
      end
    return resultArray
  end