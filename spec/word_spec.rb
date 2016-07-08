require('rspec')
require('word')

describe(Word) do
  describe('#word') do
    it('lets you give it a word') do
      test_word = Word.new("love")
      expect(test_word.word()).to(eq("love"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a word to the array of saved words") do
      test_word = Word.new("love")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

end
