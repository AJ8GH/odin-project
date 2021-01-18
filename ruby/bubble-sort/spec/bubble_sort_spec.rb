require_relative '../bubble_sort'

describe '#bubble_sort' do
  it "returns [] given an empty array" do
    expect(bubble_sort([])).to eq []
  end

  it "can sort 2 elements" do
    expect(bubble_sort([2,1])).to eq [1,2]
  end

  it "can sort 4 elements" do
    expect(bubble_sort([7,3,9,0])).to eq ([0,3,7,9])
  end
end
