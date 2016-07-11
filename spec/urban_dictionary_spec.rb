require('rspec')
require('words')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#initialize') do
    it('returns the word for a given word object') do
      test_word = Word.new({:word => "test"})
      expect(test_word.word()).to eq("test")
    end
  end

  describe('.all') do
    it('returns an empty array before first word submission') do
      expect(Word.all()).to eq([])
    end
  end
end
