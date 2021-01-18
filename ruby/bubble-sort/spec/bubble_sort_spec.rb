require_relative '../bubble_sort'

describe '#bubble_sort' do
  it "is an array method" do
    expect([].respond_to?(:bubble_sort)).to be true
  end

  it "returns [] given an empty array" do
    expect([].bubble_sort).to eq []
  end

  it 'can sort 2 elements' do
    expect([2,1].bubble_sort).to eq [1,2]
  end
end
