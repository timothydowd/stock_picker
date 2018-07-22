#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#You need to buy before you can sell
#Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.
#price_difference = []

def stock_picker(prices)
  price_diff = 0
  # go through prices working out difference between others
  prices.each do |price1|

    prices.each do |price2|
      (price2 - price1) > price_diff ? price_diff = (price2 - price1) : price_diff
      puts price_diff

    end
    puts "-"
  end



  puts price_diff

end

stock_picker([10,5,15,2,7])
