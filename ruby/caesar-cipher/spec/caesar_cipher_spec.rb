require_relative './../caesar_cipher'

describe '#caesar_cipher' do
  it "takes a string and number" do
    expect { caesar_cipher('a', 1) }.to_not raise_error
  end

  it "converts Hello World" do
    expect caesar_cipher('Hello World', 1).to eq 'Ifmmp Xpsme'

  end
end
