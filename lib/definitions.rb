class Definition
  attr_reader(:definition)
  @@definitions = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
end
