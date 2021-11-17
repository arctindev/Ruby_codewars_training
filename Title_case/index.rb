def title_case(title, minor_word="")
    if title.length === 0
    return title
    end
    
    arrayOfWords = title.split(' ')
    arrayOfMinorWords = minor_word.split(' ')
    puts(minor_word)
    
    arrayOfWords = arrayOfWords.map.with_index { |word, index| 
      if index === 0
      word = word.capitalize
      else
      word = word.capitalize
      arrayOfMinorWords.map { |minor_word| 
          if word == minor_word.capitalize
            word = word.downcase
          end
        }
      end
      word
    }
    return arrayOfWords.join(' ')
  end