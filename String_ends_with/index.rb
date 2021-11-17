def solution(str, ending)
    str = str.split(//, str.length - ending.length + 1)
    if str[str.length-1] == ending
      return true
    end
    return false
  end