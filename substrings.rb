def substrings(phrase, dictionary)
  h = Hash.new(0)
  arr = phrase.gsub(/[^0-9a-z ]/i, '').downcase.split(" ")
  arr.each do |word|
    dictionary.each do |substring|
      if word.include? substring
        h[substring] += 1
      end
    end
  end
  h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
