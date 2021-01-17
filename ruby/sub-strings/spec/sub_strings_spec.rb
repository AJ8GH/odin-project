require_relative './../sub_strings'

describe '#substrings' do
  it "is a string method" do
    expect(''.respond_to?(sub_strings)).to be true
  end
end
