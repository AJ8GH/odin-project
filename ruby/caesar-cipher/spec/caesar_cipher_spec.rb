require_relative './../caesar_cipher'

describe "#caesar_cipher" do
  let(:alphabet) { 'abcdefghijklmnopqrstuvwxyz'}
  let(:random_gibberish) { ["jas83jKs334I&^^&%$^$£$£@5JHASUD",
                           "(*&(*&^asdsf*&54sddGAS*(AdsX5*&",
                           "^$£*(HQOI5*&(*&KJHY&&*hasjhbasi",
                           "uwed783JQ(*S!@*@NIS2iwd90d5412k",
                           "l';s';.)))kdfjf832h(*(*kasjcin)"]}
  let(:bottles_of_beer) { ["99 bottles of beer on the wall, ",
                           "99 bottles of beer! ",
                           "Take one down, pass it around, ",
                           "98 bottles of beer on the wall..."]}

  it "takes a string and number" do
    expect { caesar_cipher('a', 1) }.to_not raise_error
  end

  it "converts strings with spaces" do
    expect(caesar_cipher('hello world', 1)).to eq 'ifmmp xpsme'
  end

  it "converts multi-case strings" do
    expect(caesar_cipher('HeLlO wOrLd', 1)).to eq 'IfMmP xPsMe'
  end

  it "converts strings with punctuation" do
    expect(caesar_cipher("Ruby... it's pretty cool!!!", 5)).to eq "Wzgd... ny'x uwjyyd httq!!!"
  end

  it "converts strings with numbers" do
    expect(caesar_cipher(bottles_of_beer.join, 3)).to eq ["99 erwwohv ri ehhu rq wkh zdoo, ",
                                                          "99 erwwohv ri ehhu! Wdnh rqh grzq, ",
                                                          "sdvv lw durxqg, ",
                                                          "98 erwwohv ri ehhu rq wkh zdoo..."].join
  end

  it "converts past z correctly by wrapping back round to a" do
    expect(caesar_cipher("Shall we visit the zoo?", 12)).to eq ('Etmxx iq hueuf ftq laa?')
  end

  it "converts the entire alphabet" do
    expect(caesar_cipher("#{alphabet}#{alphabet.upcase}", 9)).to eq ["jklmnopqrstuv",
                                                                     "wxyzabcdefghi",
                                                                     "JKLMNOPQRSTUV",
                                                                     "WXYZABCDEFGHI"].join
  end

  it "converts random gibberish" do
    expect(caesar_cipher(random_gibberish.join, 7)).to eq ["qhz83qRz334P&^^&%$^$£$£@5QOHZBK",
                                                        "(*&(*&^hzkzm*&54zkkNHZ*(HkzE5*&",
                                                        "^$£*(OXVP5*&(*&RQOF&&*ohzqoihzp",
                                                        "bdlk783QX(*Z!@*@UPZ2pdk90k5412r",
                                                        "s';z';.)))rkmqm832o(*(*rhzqjpu)"].join
  end
end
