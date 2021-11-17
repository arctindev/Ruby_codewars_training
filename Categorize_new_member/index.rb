def open_or_senior(data)
    data.map {
      |item|
      if item[0] >= 55
          if item[1] > 7
            item = "Senior"
          else
           item = "Open"
          end
        else
          item = "Open"
      end
    }
  end