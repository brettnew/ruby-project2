require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe("#word") do
    it("lets you give it a word") do
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

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("love").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#definitions") do
    it("initially returns an empty array of definitions for the word") do
      test_word = Word.new("love")
      expect(test_word.definitions()).to(eq([]))
    end
  end

  # describe("#add_definition") do
  #   it("adds a new definition to the word") do
  #     test_word = Word.new("love")
  #     test_definition = Definition.new("an intense feeling of deep affection")
  #     test_word.add_definition(test_definition)
  #     expect(test_word.definitions()).to(eq([test_definition]))
  #   end
  # end

end
