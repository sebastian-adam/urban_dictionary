require('rspec')
require('definitions')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#initialize') do
    it('returns the definition value for a given Definition object') do
      test_definition = Definition.new({:definition => 'This is a test definition.'})
      expect(test_definition.definition()).to eq('This is a test definition.')
    end
  end

  describe('.all') do
    it('returns an empty array before first definition value submission') do
      expect(Definition.all()).to eq([])
    end
  end

  describe('#save') do
    it('stores a definition value in the Definition object array') do
      test_definition = Definition.new({:definition => 'This is a test definition.'})
      test_definition.save()
      expect(Definition.all()).to eq([test_definition])
    end
  end
end
