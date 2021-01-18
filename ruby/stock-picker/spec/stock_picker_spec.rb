require_relative './../stock_picker'

describe '#stock_prices' do
  it "takes an array" do
    expect {stock_picker([])}.to_not raise_error
  end

  it "can pick the best day to buy" do
    expect(stock_picker([1,2,3,4]).first).to eq 0
  end

  it "can pick the best day to buy and sell" do
    expect(stock_picker([1,2,3,4])).to eq [0,3]
  end
end
