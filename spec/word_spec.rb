require('rspec')
require('word')

describe(Word) do
  describe('#word') do
    it('lets you give it a word') do
      test_word = Word.new("love")
      expect(test_word.word()).to(eq("love"))
    end
  end
end
