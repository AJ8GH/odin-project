def up?(string)
  string.upcase == string
end

def ascii(string)
  string.split('').map do |char|
    ('a'..'z').include?(char) || ('A'..'Z').include?(char) ? char.ord : char
  end
end

def caesar_cipher(string, num)
  new_string = []
  ascii(string).each do |char|
    if char.is_a? Integer
      if up?(char.chr)
        (char + num > 90) ? new_string << char + num - 26 : new_string << char + num
      else
        (char + num > 122) ? new_string << char + num - 26 : new_string << char + num
      end
    else
      new_string << char
    end
  end
  new_string.map(&:chr).join
end



p caesar_cipher('Z', 1)
p caesar_cipher('a', 1)
p caesar_cipher('z', 1)
p caesar_cipher('A', 1)

puts

p ascii('Hey You')
p caesar_cipher('hey. Nice to meet you, Zoo head (not a compliment!!! Wow youre dumb boy....)', 15)
