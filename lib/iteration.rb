def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  new_array = []
  coun = 0
  while coun < src.count do
     innerId = 0
     arr = []
     while innerId < src[coun].count do
       arr.push(src[coun][innerId] )
     innerId += 1
     end
   
    new_array.push("I love #{arr[0]} and #{arr[1]} on my pizza")
    coun += 1
  
  end
   new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  row=0
  new_array=[]
  while row<src.count do 
    
    if src[row][0]>src[row][1]
      new_array.push(src[row][0])
    else new_array.push(src[row][1])
    end 
  
  row+=1
  end
  new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  
  row=0 
  total=0 
  while row<src.count do 
    
    if src[row][0]%2==0 && src[row][1]%2==0 
      total += src[row][0]
      total += src[row][1]
    end 
    
    row += 1 
  end 
  total 
end
