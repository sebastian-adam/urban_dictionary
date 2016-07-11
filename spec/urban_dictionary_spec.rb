require('rspec')
require('words')

describe(Word) do
  before() do
    Word.clear()
  end

  decsribe('#initialize') do
    it('returns the word for a given word object') do
      test_word = Word.new({:word => "test"})
      expect(test_word.word()).to eq("test")
    end
  end
end
