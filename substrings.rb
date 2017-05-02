def substrings (word, word_list)
results = Hash.new
  word_list.each do |x|
    temp_word = word.downcase
    if temp_word.include? x
      results[x] = 0
      while temp_word.include? x do
        results[x] += 1
        temp_word = temp_word.sub(x,'')
      end
    end
  end
  return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below",dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
