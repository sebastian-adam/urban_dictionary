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
end
