def get_count(input_str)
    if !input_str
      return 0
    end
    vovels = 0;
    arrayOfChars = input_str.split('')
    for char in arrayOfChars
      case char
        when "a"
        vovels = vovels +1
        when "e"
        vovels = vovels +1
        when "i"
        vovels = vovels +1
        when "o"
        vovels = vovels +1
        when "u"
        vovels = vovels +1
        else
        vovels = vovels
        end
    end
    return vovels
  end