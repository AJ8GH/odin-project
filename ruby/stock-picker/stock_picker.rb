def stock_picker(array)
  buy_index = 0
  sell_index = 0
  profit = 0

  array.each_with_index do |buy_price, bp_index|
    array.each_with_index do |sell_price, sp_index|
      potential_profit = buy_price - sell_price
      unless sp_index <= bp_index
        if potential_profit < profit
          profit = potential_profit
          buy_index = bp_index
          sell_index = sp_index
        end
      end
    end
  end
  [buy_index, sell_index]
end
