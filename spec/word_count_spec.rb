require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns the number of words in a sentence') do
    expect('Big cats are small cats embiggened.'.word_count('cats')).to(eq(2))
  end
  
  it('registers matches with odd capitalization') do
    expect('Big cats are small CATS embiggened.'.word_count('cats')).to(eq(2))
  end
  
  it('matches words flanked by characters other than spaces') do
    expect('///buffalo buffalo buffalo.'.word_count('buffalo')).to(eq(3))
  end
end