require 'pry-byebug'

def stock_picker(prices_array)
  result = Array.new(3,0)
  prices_array.each_with_index do |buy_price, buy_index|
    unless buy_index == prices_array.length - 1
      prices_array[buy_index+1..-1].each_with_index do |sell_price, sell_index|
        profit = sell_price - buy_price
        if profit > result[2]
          result[0] = buy_index
          result[1] = sell_index+buy_index+1
          result[2] = profit
        end
      end
    end
  end
  p result.pop
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])

