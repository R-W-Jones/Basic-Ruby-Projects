# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(input, dictionary)
  input = input.downcase
  matching_hash = Hash.new(0)

  dictionary.each do |word|
    input.scan(word).each do
      matching_hash[word] += 1
    end
  end

  matching_hash
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
