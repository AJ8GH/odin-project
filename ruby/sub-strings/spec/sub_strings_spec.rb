require_relative './../sub_strings'

describe '#substrings' do
  let (:dictionary) { ["below","down","go","going","horn", "how","howdy","it","i","low","own",
                       "part","partner","sit"] }

  let (:solution_hash) { {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2,
                       "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1} }

  let (:tale_of_two_cities) { %w[It was the best of times, it was the worst of times,
                                 it was the age of wisdom, it was the age of foolishness,
                                 it was the epoch of belief, it was the epoch of incredulity,
                                 it was the season of light, it was the season of darkness,
                                 it was the spring of hope, it was the winter of despair.]}

  let (:dickens_string) { "it sit pair despair, the age of forage,
                           as dark as night as light as summer" }

  it "can be passed 2 arguments" do
    expect { substrings('', []) }.to_not raise_error
  end

  it 'can handle 1 word string' do
    expect(substrings('below', dictionary)).to eq 'below'=>1, 'low'=>1
  end

  it 'can handle a longer string' do
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq solution_hash
  end

  it 'can handle Dickens' do
    expect(substrings(dickens_string, tale_of_two_cities)).to eq 'the'=>10,'of'=>10,'it'=>18,'age'=>4
  end
end
