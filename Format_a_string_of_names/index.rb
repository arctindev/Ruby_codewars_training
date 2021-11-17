def list names
    resultString = "";
    i = 1;
    for name in names
      if i == 1
      resultString = resultString + "#{name[:name]}"
      elsif i != names.length
      resultString = resultString + ", #{name[:name]}"
      else
      resultString = resultString +" & #{name[:name]}"
      end
      i = i+1
    end
    return resultString
  end