require_relative './../stock_picker'

describe '#stock_prices' do
  let (:big_array) { [2,7,23,4,6,8,8,4,234,234,234,23,2,21,1,2,5,6,7,7,78,89,9,9,90,234,
                      23,3,5,6,65,5,4,5,76,756,68,68,78,78,89,9,9090,909,5,43,3,3,22,3] }

  it "takes an array" do
    expect {stock_picker([])}.to_not raise_error
  end

  it "can pick the best day to buy" do
    expect(stock_picker([1,2,3,4]).first).to eq 0
  end

  it "can pick the best day to buy and sell" do
    expect(stock_picker([1,2,3,4])).to eq [0,3]
  end

  it "can pick correctly if the max value is before the min value" do
    expect(stock_picker([4,1,2,3])).to eq [1,3]
  end

  it "can handle the example case" do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq [1,4]
  end

  it "can handle larger arrays" do
    expect(stock_picker(big_array)).to eq [14,42]
  end
end
