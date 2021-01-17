require_relative './../sub_strings'

describe '#substrings' do
  it "is a method and can be passed a string as argument" do
    expect { sub_strings('') }.to_not raise_error
  end
end
