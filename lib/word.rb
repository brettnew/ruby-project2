class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
    @definitions = []
  end

  define_method(:word) do
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

end
