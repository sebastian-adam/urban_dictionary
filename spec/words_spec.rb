require('rspec')
require('words')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#initialize') do
    it('returns a word value for a given Word object') do
      test_word = Word.new({:word => "test"})
      expect(test_word.word()).to eq("test")
    end
  end

  describe('.all') do
    it('returns an empty array before first word value submission') do
      expect(Word.all()).to eq([])
    end
  end

  describe('#save') do
    it('stores a word value in the Word object array') do
      test_word = Word.new({:word => "test"})
      test_word.save()
      expect(Word.all()).to eq([test_word])
    end
  end

  describe('.find') do
    it('stores a word value in the Word object array') do
      test_word = Word.new({:word => "test"})
      test_word.save()
      expect(Word.all()).to eq([test_word])
    end
  end
end
