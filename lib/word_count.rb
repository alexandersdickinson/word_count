class String
  def word_count(word)
    word.upcase!()
    sentence = self.split(' ')
    count = 0
    sentence.each do |comp|
      count = count + 1 if comp.upcase() == word
    end
    count
  end
end