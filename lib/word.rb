class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
    @definitions = []
    @id = @@all_words.length().+(1)
  end

  define_method(:name_of_word) do
    @word
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@all_words.each() do |word|
      if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
    found_word
  end
end
