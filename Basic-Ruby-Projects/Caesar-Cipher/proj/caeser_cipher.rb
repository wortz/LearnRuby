def caesar_cipher(text, key)
  result=""
  text.each_char do |char|
    if !char.match?(/[[:digit:]]/)
      new_char=shift_letter(char.ord, key).chr
    else
      new_char=char
    end
    result << new_char
  end
  result
end

def shift_letter(char, key)
  case char
  when 65..90
    char+=key
    char -= 26 if char > 90
    char += 26 if char < 65
  when 97..122
    char+=key
    char -= 26 if char > 122
    char += 26 if char < 97
  else
    char=char
  end
  char
end


puts caesar_cipher("What a string!5", 5)