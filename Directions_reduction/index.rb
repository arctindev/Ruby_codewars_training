def dirReduc(arr)
    indexToDelete = []
    for i in 0..arr.length
      if arr[i] === "NORTH"
        if arr[i+1] === "SOUTH"
          indexToDelete.push(i, i+1)
          i = i +1;
        end
      end
      
      if arr[i] === "SOUTH"
        if arr[i+1] === "NORTH"
          indexToDelete.push(i, i+1)
          i = i +1;
        end
      end
      
      if arr[i] === "EAST"
        if arr[i+1] === "WEST"
          indexToDelete.push(i, i+1)
          i = i +1;
        end
      end
      
      if arr[i] === "WEST"
        if arr[i+1] === "EAST"
          indexToDelete.push(i, i+1)
          i = i +1;
        end
      end
    end
    
      for i in 1..indexToDelete.length
        arr.delete_at(indexToDelete[indexToDelete.length - i])
      end
    
    for i in 0..arr.length
      if arr[i] === "NORTH"
        if arr[i+1] === "SOUTH"
          dirReduc(arr)
        end
      end
      
      if arr[i] === "SOUTH"
        if arr[i+1] === "NORTH"
          indexToDelete.push(i, i+1)
          dirReduc(arr)
        end
      end
      
      if arr[i] === "EAST"
        if arr[i+1] === "WEST"
          indexToDelete.push(i, i+1)
          dirReduc(arr)
        end
      end
      
      if arr[i] === "WEST"
        if arr[i+1] === "EAST"
          indexToDelete.push(i, i+1)
          dirReduc(arr)
        end
      end
    end
    
    arr
  end