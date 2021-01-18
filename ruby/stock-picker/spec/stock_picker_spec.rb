require_relative './../stock_picker'

describe '#stock_prices' do
  it "takes an array" do
    expect {stock_picker([])}.to_not raise_error
  end

  it "can pick the best day to buy" do
    expect(stock_picker([1,2,3,4]).first).to eq 1
  end
end
