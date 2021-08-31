
def substrings(text, dictionary)
  text_lower=text.downcase
  result = Hash.new
  dictionary.each do |dict_word|
    word_appears = text_lower.scan(/#{dict_word.downcase}/).length
    result[dict_word]=word_appears if word_appears > 0
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "First"
puts substrings("below", dictionary)

puts "Second"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
