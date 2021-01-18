def stock_picker(array)
  buy_index = 0
  sell_index = 0
  profit = 0

  array.each_with_index do |price, index|
    array.each_with_index do |p2, i2|
      potential_profit = price - p2
      unless i2 <= index
        if potential_profit < profit
          profit = potential_profit
          buy_index = index
          sell_index = i2
        end
      end
    end
  end
  [buy_index, sell_index]
end

# stock_picker
