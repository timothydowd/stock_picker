#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#You need to buy before you can sell
#Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.


def stock_picker(prices)
  price_diff = 0
  count = 0
  best_days_array = []

  prices.each do |price1|
    count += 1
    prices.each do |price2|
      if count > prices.index(price2)
        next
      else
        if (price2 - price1) > price_diff
          price_diff = (price2 - price1)
          best_days_array = [prices.index(price1), prices.index(price2)]
        end
      end
    end
  end
  puts best_days_array
end

stock_picker([5,15,4,16,1,1,1,22])
