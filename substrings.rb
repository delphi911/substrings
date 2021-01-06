class Substring
    
  def substrings(sentence, dictionary)
    arr = sentence.split(" ")
    total = Hash.new(0)

    arr.each do |word|
      subtotal = Hash.new(0)
      dictionary.reduce(subtotal) {|hash, w| hash[w] += 1 if word.downcase.include?(w.downcase); hash}
      total = subtotal.merge(total) {|key, old, newval| newval + old}
    end  #arr.each do
    total
  end  #def substrings
  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
code = Substring.new
p code.substrings("Howdy partner, sit down! How's it going?", dictionary)
