class Word
  attr_reader(:id, :word)
    @@words = []

  define_method(:initialize) do |attributes|
    @id = @@words.length.+(1)
    @word = attributes.fetch(:word)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end
end
