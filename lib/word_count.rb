class String
  def word_count(word)
    comp1 = word.upcase()
    sentence = self.split(/\W/)
    count = 0
    sentence.each do |comp2|
      count = count + 1 if comp1 == comp2.upcase()
    end
    count
  end
end