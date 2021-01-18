def substrings(string, dictionary)
  p words = string.downcase.split
  hash = {}

  dictionary.each do |dict_word|
    words.each do |string_word|
      if string_word.include?(dict_word)
        hash.include?(dict_word) ? hash[dict_word] += 1 : hash[dict_word] = 1
      end
    end
  end
  hash
end
