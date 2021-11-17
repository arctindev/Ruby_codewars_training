def solution(list)
    start_cache = 0;
    end_cache = 0;
    resultArray = []
    lastNumber = 0;
    tempHelper = 1;
    
    list.map {
      |item|
      if start_cache === 0
        start_cache = item
      else
        if item != start_cache + tempHelper
          end_cache = lastNumber
          tempHelper = 1
          if start_cache === end_cache
            resultArray.push("#{start_cache}")
            start_cache = item
            end_cache = 0
          else
            if start_cache == end_cache -1
              resultArray.push("#{start_cache},#{end_cache}")
              start_cache = item
              end_cache = 0
               else 
               resultArray.push("#{start_cache}-#{end_cache}")
              start_cache = item
              end_cache = 0
            end
          end
          else
          tempHelper = tempHelper +1
        end
      end
      lastNumber = item;
    }
    if start_cache != lastNumber -1
      if start_cache != lastNumber
      resultArray.push("#{start_cache}-#{lastNumber}")
        else
        resultArray.push("#{start_cache}")
        end
    end
    if start_cache == lastNumber -1
      resultArray.push("#{start_cache},#{lastNumber}")
      end
    puts(start_cache)
    puts(lastNumber)
    return resultArray.join(',')
  end