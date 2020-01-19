def join_ingredients(src)
  
  stringArray = []
  
  for element in src
  
    sentence = "I love #{element[0]} and #{element[1]} on my pizza"
    stringArray.push(sentence)
  
  end
  
  stringArray
  
end

def find_greater_pair(src)
  
  numberArray = []
  
  for element in src
  
    numberArray.push(element.max)
  
  end
  
  numberArray
  
end

def total_even_pairs(src)
  
  arraySum = 0
  
  for element in src
    
    if element[0].even? && element[1].even?
      
      arraySum += element[0] + element[1]
      
    end
  end    
  
  arraySum
  
end
