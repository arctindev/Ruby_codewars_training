def is_triangle(a,b,c)
    if a+b <= c 
      return false
      end
    if a+c <= b 
      return false
      end
    if c+b <= a 
      return false
      end
    return true
 end