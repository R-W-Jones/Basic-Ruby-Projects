def chiper(str, num)
  upcase = ("A".."Z").to_a 
  lowcase = ("a".."z").to_a 
  encrypted = ""

  str.chars do |char| 
    if upcase.include?(upcase)
      new_index = (upcase.index(char) + num ) % 26
      encrypted += upcase[new_index]
    elsif lowcase.include?(char)
      new_index = (lowcase.index(char) + num ) % 26
      encrypted += lowcase[new_index]
    else 
      encrypted += char
    end
  end
    return encrypted
end

puts chiper("What a String!", 9)