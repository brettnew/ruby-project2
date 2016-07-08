class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
  end

  define_method(:word) do
    @word
  end

  define_singleton_method(:all) do
    @@all_words
  end

end
