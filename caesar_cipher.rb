def caesar_cipher(str, num)
  alphabet = ("a".."z").to_a
  result = ""
  
  str.each_char do |char|
    if letter?(char)
      result += shift_char(char, num, alphabet)
    else
      result += char
    end
  end

  result
end

# Check if the character is a letter
def letter?(char)
  char.match?(/[a-zA-Z]/)
end

# Shift the character according to Caesar cipher logic
def shift_char(char, num, alphabet)
  new_char = find_new_char(char, num, alphabet)
  new_char = new_char.upcase if char == char.upcase
  new_char
end

# Find the new character after shifting
def find_new_char(char, num, alphabet)
  new_index = (alphabet.index(char.downcase) + num) % 26
  alphabet[new_index]
end

puts caesar_cipher('What a String!', 9)
