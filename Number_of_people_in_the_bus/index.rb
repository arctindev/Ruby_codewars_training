def number(bus_stops)
    people_entered = 0;
    people_left = 0;
    bus_stops.map {
      |stop|
      people_entered = people_entered +stop[0]
      people_left = people_left +stop[1]
    }
  
    return people_entered - people_left
  end