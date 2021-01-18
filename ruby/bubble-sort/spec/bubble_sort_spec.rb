require_relative '../bubble_sort'

describe '#bubble_sort' do
  let (:long_array) { [2,7,9,3,4,8,43,2,234,7,456,547,4567,4567,232,3,3,5,1,5,8,8,9,0] }
  let (:string_array) { %w[w g s e g x f r d] }
  let (:long_string_array) { %w[se yu fg d s s c iuy mn qwe zxc sdf yui gnb gfg gbfgb sdfwefweasd
                                wqer v g s q z a x z s z s f g v v e ldd cpd ch kdj lw q b r ysdc]}

  it "returns [] given an empty array" do
    expect(bubble_sort([])).to eq []
  end

  it "can sort 2 elements" do
    expect(bubble_sort([2,1])).to eq [1,2]
  end

  it "can sort 4 elements" do
    expect(bubble_sort([7,3,9,0])).to eq ([0,3,7,9])
  end

  it "can sort longer more complex sequences" do
    expect(bubble_sort(long_array)).to eq long_array.sort
  end

  it "works on strings" do
    expect(bubble_sort(string_array)).to eq string_array.sort
  end

  it "works on longer string arrays" do
    expect(bubble_sort(long_string_array)).to eq long_string_array.sort
  end
end
