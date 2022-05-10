dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,dictionary)
  result = {}
  
  dictionary.each do |word|
    matches = string.downcase.scan(word).length
    unless matches == 0 
      result[word] = matches
    end
  end
  result
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)