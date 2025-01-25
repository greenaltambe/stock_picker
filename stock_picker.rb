# prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
# prices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# prices = [9, 8, 7, 6, 5, 4, 3, 2, 1]
# prices = [5]

def stock_picker(prices)
  min_price_index = 0
  max_profit = 0
  
  output = [0, 0]
  prices.each_with_index do |price, index|
    if price < prices[min_price_index]
      min_price_index = index
    end 

    if price - prices[min_price_index] > max_profit
      output[0] = min_price_index
      output[1] = index
      max_profit = price - prices[min_price_index]
    end
  end

  output
end

p stock_picker(prices)