=begin
array_1 = [
  
  ['pepperoni', 'sausage'], 
  ['green olives', 'green peppers'], 
  ['onions', 'pineapple']

]
=end 

def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  result = []
  index = 0 
  while index < src.length do 
    inner = src[index]
    result << "I love #{inner[0]} and #{inner[1]} on my pizza"
    index +=1 
  end 
  result
end

=begin
0 < 3
[I love first two]

1 < 3
[I love next two]

2 < 3 
[I love next two ]
=end 


=begin
array_2 = [

[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]

]
=end 
def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  result = []
  index = 0 
  while index < src.length do 
    inner = src[index]
    if inner[0] > inner[1]
      result << inner[0]
    else
      result << inner[1]
    end
    index +=1
  end
   result
end


=begin
[
  [86262, 58115],
  [22558, 97709], 
  [66236, 28056], 
  [25992, 81375], 
  [11248, 56789], 
  [42783, 27353], 
  [70796, 63432],
  [53234, 63058], 
  [72316, 8675309]
]
=end
def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  result = 0
  index = 0 
  while index < src.length do
    inner = src[index]
    
    if inner[0] % 2 == 0 && inner[1] % 2 == 0
      result += inner[0] + inner[1]
    end
    index += 1
  end
  result
end
