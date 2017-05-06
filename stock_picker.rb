def stock_picker(prices)
  results = []
  temp_set = []
  biggest_gain = 0
  biggest_gain_index = 0
  
  # Get list of sets of buy,sell,profit
  (0..prices.size-2).each do |i|
    temp_set.clear
    temp_set << i
    temp_set << prices.index(prices[i+1..-1].sort.last)
    temp_set << prices[temp_set[1]] - prices[temp_set[0]]
    
    if temp_set[2] > biggest_gain
      biggest_gain = temp_set[2]
      biggest_gain_index = i
    end
    
    results << [temp_set[0],temp_set[1],temp_set[2]]
  end
  
  p results[biggest_gain_index]
  
  puts 'Buy Day: ' + results[biggest_gain_index][0].to_s + ' | Sell Day: ' + results[biggest_gain_index][1].to_s + \
    ' | Profit: ' + results[biggest_gain_index][2].to_s

end

prices = []
(0..7).each { prices << rand(1..20)}

p prices
stock_picker(prices)
