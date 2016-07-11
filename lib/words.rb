class Word
  attr_reader(:id, :word)
    @@words = []

  define_method(:initialize) do |attributes|
    @id = @@words.length.+(1)
    @word = attributes.fetch(:word)
  end

  define_method_singleton_method(:clear) do
    @@words = []
  end
end
